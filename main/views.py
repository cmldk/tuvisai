from django.shortcuts import render, redirect
from django.db.models import Count, Q
from .forms import *
from django.contrib.auth.models import User
from django.contrib.auth import authenticate
from django.contrib.auth import login as auth_login
from django.contrib.auth import logout as django_logout
from .models import Users, Records, QualityCodes, ErrorCodes
from django.contrib.auth.decorators import login_required
from django.views.decorators import gzip
from django.http import HttpResponse, StreamingHttpResponse, JsonResponse
from django.utils import timezone
import datetime
from django.conf import settings
import numpy as np
import cv2

def login(request):
    form = LoginForm(request.POST or None)
    context = {
        "form": form
    }
    if form.is_valid():
        username = form.cleaned_data.get("username")
        password = form.cleaned_data.get("password")

        user = Users.objects.filter(us_name=username)
        user2 = authenticate(username=username, password=password)
        if user is None:
            return render(request, "login.html", context)
        else:
            auth_login(request, user2)
            user.update(us_lastseen=timezone.now())
            return redirect("dashboard")
    return render(request, "login.html", context)


def register(request):
    form = RegisterForm(request.POST or None)
    if form.is_valid():
        firstname = form.cleaned_data.get("firstname")
        lastname = form.cleaned_data.get("lastname")
        email = form.cleaned_data.get("email")
        username = form.cleaned_data.get("username")
        password = form.cleaned_data.get("password")

        username_qs = Users.objects.filter(us_name=username)
        if username_qs.exists():
            raise ValidationError("Username already exists")
        newUser = Users(us_email=email, us_name=username,
                        us_password=password, us_fname=firstname, us_lname=lastname)
        newUser.save()

        newUser2 = User(username=username)
        newUser2.set_password(password)
        newUser2.save()

        return redirect("login")
    context = {
        "form": form
    }
    return render(request, "register.html", context)


@login_required(login_url="login")
def logout(request):
    django_logout(request)
    return redirect("login")


def index(request):
    return redirect('login')


@login_required(login_url="login")
def dashboard(request):
    user = request.user
    userCount = User.objects.all().count()
    qualityCount = QualityCodes.objects.all().count()
    qualities = QualityCodes.objects.all()
    errors = ErrorCodes.objects.all()
    errorCount = ErrorCodes.objects.all().count()

    qcHigh = Records.objects.all().values('re_qualityid').annotate(
        total=Count('re_qualityid')).order_by('-total')[:3]
    qcLow = Records.objects.all().values('re_qualityid').annotate(
        total=Count('re_qualityid')).order_by('total')[:3]
    qcAll = Records.objects.all().values('re_qualityid').annotate(
        total=Count('re_qualityid')).order_by('total')
    qcNone = QualityCodes.objects.filter(~Q(qu_id__in=getQualities(qcAll)))[:3]

    erHigh = Records.objects.all().values('re_errorid').annotate(
        total=Count('re_errorid')).order_by('-total')[:3]
    erLow = Records.objects.all().values('re_errorid').annotate(
        total=Count('re_errorid')).order_by('total')[:3]
    erAll = Records.objects.all().values('re_errorid').annotate(
        total=Count('re_errorid')).order_by('total')
    erNone = ErrorCodes.objects.filter(~Q(er_id__in=getErrors(erAll)))[:3]
    return render(request, "dashboard.html", {'user': user, 'userCount': userCount, 'qualityCount': qualityCount, 'errorCount': errorCount,
                                              'qcHigh': qcHigh, 'qcLow': qcLow, 'erHigh': erHigh, 'erLow': erLow, 'qualities': qualities, 'errors': errors,
                                              'erNone': erNone, 'qcNone': qcNone})


@login_required(login_url="login")
def records(request):
    records = Records.objects.all()
    qualityCodes = QualityCodes.objects.all()
    errorCodes = ErrorCodes.objects.all()
    return render(request, "records.html", {'records': records, 'qualityCodes': qualityCodes, 'errorCodes': errorCodes})


@login_required(login_url="login")
def users(request):
    users = Users.objects.all()
    recordCount = Records.objects.filter(re_labeledby__in=users).values('re_labeledby').annotate(
        total=Count('re_labeledby')).order_by('total')
    return render(request, "users.html", {'users': users, 'recordCount': recordCount})


@login_required(login_url="login")
def qualities(request):
    qualities = QualityCodes.objects.all()
    recordCount = Records.objects.filter(re_qualityid__in=qualities).values('re_qualityid').annotate(
        total=Count('re_qualityid')).order_by('total')
    return render(request, "qualities.html", {'qualities': qualities, 'recordCount': recordCount})


@login_required(login_url="login")
def errors(request):
    errors = ErrorCodes.objects.all()
    recordCount = Records.objects.filter(re_errorid__in=errors).values('re_errorid').annotate(
        total=Count('re_errorid')).order_by('total')
    return render(request, "errors.html", {'errors': errors, 'recordCount': recordCount})


@login_required(login_url="login")
def reports(request):
    user = Users.objects.get(us_name="cemaldak")
    recordCount = Records.objects.filter(re_createdat__month="02").values('re_labeledby').annotate(
        total=Count('re_labeledby')).order_by('total')
    rc = Records.objects.filter(
        re_createdat__contains=datetime.date(2020, 2, 3))
    records = rc.filter(re_labeledby=Users.objects.get(us_id=1))
    count = records.count()
    return render(request, "reports.html", {'records': records, 'count': count})


@login_required(login_url="login")
def newError(request):
    form = ErrorForm(request.POST or None)
    if form.is_valid():
        er_code = form.cleaned_data.get("er_code")
        er_name = form.cleaned_data.get("er_name")

        currentUser = request.user
        username = currentUser.username

        newError = ErrorCodes(er_code=er_code, er_name=er_name,
                              er_createdby=Users.objects.get(us_name=username))
        newError.save()

        return redirect("errors")
    return render(request, "newError.html", {'form': form})


@login_required(login_url="login")
def newQuality(request):
    form = QualityForm(request.POST or None)
    if form.is_valid():
        qu_code = form.cleaned_data.get("qu_code")
        qu_name = form.cleaned_data.get("qu_name")

        currentUser = request.user
        username = currentUser.username

        newQuality = QualityCodes(
            qu_code=qu_code, qu_name=qu_name, qu_createdby=Users.objects.get(us_name=username))
        newQuality.save()

        return redirect("qualities")
    return render(request, "newQuality.html", {'form': form})


@login_required(login_url="login")
def newRecord(request):
    form = RecordForm(request.POST or None, request.FILES or None)
    if form.is_valid():
        re_fabrictype = form.cleaned_data.get("re_fabrictype")
        re_path = form.cleaned_data.get("re_path")
        re_qualityid = form.cleaned_data.get("re_qualityid")
        re_errorid = form.cleaned_data.get("re_errorid")
        re_image = form.cleaned_data.get("re_image")

        currentUser = request.user
        username = currentUser.username

        newRecord = Records(re_fabrictype=re_fabrictype, re_path=re_path, re_labeledby=Users.objects.get(
            us_name=username), re_qualityid=re_qualityid, re_errorid=re_errorid, re_image=re_image)
        newRecord.save()

        return redirect("records")
    return render(request, "newRecord.html", {'form': form})


@login_required(login_url="login")
def editRecord(request, id):
    record = Records.objects.get(re_id=id)
    form = ModelRecordForm(request.POST or None,request.FILES or None, instance=record)
    if form.is_valid():
        re_quality = form.cleaned_data.get("re_quality")
        re_error = form.cleaned_data.get("re_error")

        if re_quality:
            quality = QualityCodes.objects.get(qu_code=re_quality.split("___", 1)[0], qu_name=re_quality.split("___", 1)[1])
            record.re_qualityid = quality
        if re_error:
            error = ErrorCodes.objects.get(er_code=re_error.split("___",1)[0],er_name=re_error.split("___", 1)[1])
            record.re_errorid = error

        record = form.save(commit=False)
        record.re_editedat = timezone.now()
        record.save()

        return redirect("records")
    return render(request, "editRecord.html", {'form': form, 'record': record})

@login_required(login_url="login")
def deleteRecord(request, id):
    Records.objects.get(re_id=id).delete()
    return redirect("records")


@login_required(login_url="login")
def detailRecord(request, id):
    record = Records.objects.get(re_id=id)
    form = ReadOnlyRecordForm(request.POST or None, instance=record)
    return render(request, "detailRecord.html", {'form': form, 'record': record})


@login_required(login_url="login")
def editError(request, id):
    error = ErrorCodes.objects.get(er_id=id)
    form = ModelErrorForm(request.POST or None, instance=error)
    if form.is_valid():
        error = form.save(commit=False)
        error.er_editedat = timezone.now()
        error.save()

        return redirect("errors")
    error = ErrorCodes.objects.get(er_id=id)
    return render(request, "editError.html", {'error': error, 'form': form})


@login_required(login_url="login")
def deleteError(request, id):
    ErrorCodes.objects.get(er_id=id).delete()
    return redirect("errors")


@login_required(login_url="login")
def editQuality(request, id):
    quality = QualityCodes.objects.get(qu_id=id)
    form = ModelQualityForm(request.POST or None, instance=quality)
    if form.is_valid():
        quality = form.save(commit=False)
        quality.qu_editedat = timezone.now()
        quality.save()

        return redirect("qualities")
    quality = QualityCodes.objects.get(qu_id=id)
    return render(request, "editQuality.html", {'quality': quality, 'form': form})


@login_required(login_url="login")
def deleteQuality(request, id):
    QualityCodes.objects.get(qu_id=id).delete()
    return redirect("qualities")


def getQualities(self):
    qch = []
    for p in self:
        qch.append(p.get("re_qualityid"))
    return qch


def getErrors(self):
    qch = []
    for p in self:
        qch.append(p.get("re_errorid"))
    return qch


@login_required(login_url="login")
def getChartData(request, *args, **kwargs):
    start_date = request.GET.get('start_date')
    finish_date = request.GET.get('finish_date')
    if start_date:
        start_date = start_date
    else:
        start_date = "2020-01-01"
    rc = Users.objects.filter(records__re_createdat__range=(start_date, finish_date)).values('us_name').annotate(total=Count('us_name')).order_by('total')[0:10]
    rc2 = Records.objects.filter(re_createdat__range=(start_date, finish_date)).values(
        're_errorid').annotate(total=Count('re_errorid')).order_by('total')
    errs = ErrorCodes.objects.all()
    rc3 = Records.objects.filter(re_createdat__range=(start_date, finish_date)).values(
        're_qualityid').annotate(total=Count('re_qualityid')).order_by('total')
    qualities = QualityCodes.objects.all()
    quality = []
    for r in rc3:
        for q in qualities:
            if r.get("re_qualityid") == q.qu_id:
                item = {'label': q.qu_name, 'y': r.get("total")}
                quality.append(item)
    errors = []
    for r in rc2:
        for err in errs:
            if r.get("re_errorid") == err.er_id:
                item = {'label': err.er_name, 'y': r.get("total")}
                errors.append(item)
    records = []
    for r in rc:
        item = {'label': r.get("us_name"), 'y': r.get("total")}
        records.append(item)
    data = {
        'records': records,
        'errors': errors,
        'quality': quality,
    }
    return JsonResponse(data)

def ErrorRecord(request):
    return render(request,"ErrorRecord.html")



class VideoCamera(object):

    def __init__(self):
        self.video = cv2.VideoCapture(0)

    def __del__(self):
        self.video.release()

    def get_frame(self):
        ret, frame = self.video.read()
        ret, jpeg = cv2.imencode('.jpg', frame)
        return jpeg.tobytes()

def gen(camera):
    while True:
        frame = camera.get_frame()
        yield(b'--frame\r\n'
              b'Content-Type: image/jpeg\r\n\r\n' + frame + b'\r\n\r\n')

@gzip.gzip_page
def newError2(request):
    value = request.GET.get('value')
    try:
        while True:
            cam = VideoCamera()
            live_stream = StreamingHttpResponse(gen(cam), content_type="multipart/x-mixed-replace;boundary=frame")
            return live_stream
            if value == "kapat":
                break
            elif value== "take":
                return StreamingHttpResponse(gen(cam), content_type="multipart/x-mixed-replace;boundary=frame")
    except HttpResponseServerError as e:
        print("aborted")
"""
cam = cv2.VideoCapture(0)
    cv2.namedWindow("test")
    img_counter = 0

    while True:
        ret, frame = cam.read()
        cv2.imshow("test", frame)
        if not ret:
            break
        k = cv2.waitKey(1)

        if k % 256 == 27:
            # ESC pressed
            print("Escape hit, closing...")
            break
        elif k % 256 == 32:
            # SPACE pressed
            img_name = "opencv_frame_{}.png".format(img_counter)
            cv2.imwrite(img_name, frame)
            print("{} written!".format(img_name))
            img_counter += 1

    cam.release()
    cv2.destroyAllWindows()

    /////////
    try:
        while True:
            k = cv2.waitKey(1)
            cam = VideoCamera()
            return StreamingHttpResponse(gen(cam), content_type="multipart/x-mixed-replace;boundary=frame")
            if k % 256 == 27:
                # ESC pressed
                print("Escape hit, closing...")
                break
            elif k % 256 == 32:
                # SPACE pressed
                img_name = "opencv_frame_{}.png".format(img_counter)
                VideoCamera.video.imwrite(img_name, frame)
                print("{} written!".format(img_name))
                img_counter += 1
    except HttpResponseServerError as e:
        print("aborted")
"""
