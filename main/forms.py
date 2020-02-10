from django import forms
from .models import QualityCodes,ErrorCodes
from .models import Records

class RegisterForm(forms.Form):
    firstname = forms.CharField(label='',widget=forms.TextInput(attrs={'class': 'form-control mb-3','placeholder': 'İsim*'}), max_length=200, min_length=3)
    lastname = forms.CharField(label='',widget=forms.TextInput(attrs={'class': 'form-control mb-3','placeholder': 'Soyisim*'}), max_length=200, min_length=3)
    email = forms.EmailField(label='', widget=forms.TextInput(attrs={'class': 'form-control mb-3', 'placeholder': 'E-mail*'}))
    username = forms.CharField(label='',widget=forms.TextInput(attrs={'class':'form-control mb-3','placeholder':'Kullanıcı Adı*'}),max_length=50, min_length=3)
    password = forms.CharField(label='',min_length=5, widget=forms.PasswordInput(attrs={'class': 'form-control mb-3', 'placeholder': 'Parola*'}))
    confirm = forms.CharField(label='', max_length=20, widget=forms.PasswordInput(attrs={'class': 'form-control', 'placeholder': 'Parola Doğrula*'}))

    def clean(self):
        firstname = self.cleaned_data.get("firstname")
        lastname = self.cleaned_data.get("lastname")
        username = self.cleaned_data.get("username")
        email = self.cleaned_data.get("email")
        password = self.cleaned_data.get("password")
        confirm = self.cleaned_data.get("confirm")

        if password and confirm and password != confirm:
            raise forms.ValidationError("Parolalar eşleşmiyor.")

        values = {
            "firstname": firstname,
            "lastname": lastname,
            "username": username,
            "email": email,
            "password": password,
        }
        return values

class LoginForm(forms.Form):
    username = forms.CharField(label='', widget=forms.TextInput(attrs={'class': 'form-control mb-3', 'placeholder': 'Kullanıcı Adı'}), max_length=200, min_length=3)
    password = forms.CharField(label='', max_length=20, widget=forms.PasswordInput( attrs={'class': 'form-control', 'placeholder': 'Parola'}))

class ErrorForm(forms.Form):
    er_code = forms.CharField(label='', widget=forms.TextInput(
        attrs={'class': 'form-control mb-3', 'placeholder': 'Hata Kodu'}), max_length=200)
    er_name = forms.CharField(label='', widget=forms.TextInput(
        attrs={'class': 'form-control mb-3', 'placeholder': 'Hata Adı'}), max_length=200)
    
class RecordForm(forms.Form):
    re_fabrictype = forms.CharField(label='', widget=forms.TextInput(
        attrs={'class': 'form-control mb-3', 'placeholder': 'Kumaş Türü'}), max_length=200)
    re_path = forms.CharField(label='', widget=forms.TextInput(
        attrs={'class': 'form-control mb-3', 'placeholder': 'Path'}), max_length=200)
    re_qualityid = forms.ModelChoiceField(queryset=QualityCodes.objects.all(), empty_label='Kaliteyi Seçin', label='',
        widget=forms.Select(attrs={'class': 'browser-default custom-select mb-3'}))
    re_errorid = forms.ModelChoiceField(queryset=ErrorCodes.objects.all(), empty_label='Hatayı Seçin', label='',
        widget=forms.Select(attrs={'class': 'browser-default custom-select mb-3'}))
    re_image = forms.ImageField(label='Yeni Fotoğraf')

def getQualityChoices():
    qualities = QualityCodes.objects.all()
    CHOICES = []
    for qu in qualities:
        CHOICES.append((qu.codeName,qu.codeName))
    CHOICES = [('', 'Seçiniz')] + CHOICES
    CHOICES = tuple(CHOICES)
    return CHOICES

def getErrorChoices():
    errors = ErrorCodes.objects.all()
    CHOICES = []
    for er in errors:
        CHOICES.append((er.codeName, er.codeName))
    CHOICES = [('', 'Seçiniz')] + CHOICES
    CHOICES = tuple(CHOICES)
    return CHOICES

class QualityForm(forms.Form):
    qu_code = forms.CharField(label='', widget=forms.TextInput(
        attrs={'class': 'form-control mb-3', 'placeholder': 'Kalite Kodu'}), max_length=200)
    qu_name = forms.CharField(label='', widget=forms.TextInput(
        attrs={'class': 'form-control mb-3', 'placeholder': 'Kalite Adı'}), max_length=200)

class ModelErrorForm(forms.ModelForm):
    er_code = forms.CharField(label='', widget=forms.TextInput(
        attrs={'class': 'form-control mb-3', 'placeholder': 'Hata Kodu*'}), max_length=300, min_length=3)
    er_name = forms.CharField(label='', widget=forms.TextInput(
        attrs={'class': 'form-control mb-3', 'placeholder': 'Hata Adı*'}), max_length=300, min_length=3)
    
    class Meta:
        model = ErrorCodes
        fields = ['er_code', 'er_name']

class ModelQualityForm(forms.ModelForm):
    qu_code = forms.CharField(label='', widget=forms.TextInput(
        attrs={'class': 'form-control mb-3', 'placeholder': 'Kalite Kodu*'}), max_length=300, min_length=3)
    qu_name = forms.CharField(label='', widget=forms.TextInput(
        attrs={'class': 'form-control mb-3', 'placeholder': 'Kalite Adı*'}), max_length=300, min_length=3)

    class Meta:
        model = QualityCodes
        fields = ['qu_code', 'qu_name']

class ModelRecordForm(forms.ModelForm):
    re_quality = forms.ChoiceField(choices=getQualityChoices, label='Değişmek İstenilen Kalite', widget=forms.Select(
        attrs={'class': 'browser-default custom-select mb-3'}), required=False)
    re_error = forms.ChoiceField(choices=getErrorChoices, label='Değişmek İstenilen Hata', widget=forms.Select(
        attrs={'class': 'browser-default custom-select mb-3'}), required=False)
    re_image = forms.ImageField(label='Yeni Fotoğraf', widget=forms.FileInput,required=False)
    re_qualityid = forms.ModelChoiceField(queryset=QualityCodes.objects.all(), empty_label='Kaliteyi Seçin', label='Kalite Adı', required=False,
                                        widget=forms.Select(attrs={'class': 'browser-default custom-select mb-3'}))
    re_errorid = forms.ModelChoiceField(queryset=ErrorCodes.objects.all(), empty_label='Hatayı Seçin', label='Hata Adı',required=False,
                                        widget=forms.Select(attrs={'class': 'browser-default custom-select mb-3'}))

    def clean(self):
        re_quality = self.cleaned_data.get("re_quality")
        re_error = self.cleaned_data.get("re_error")

        values = {
            "re_quality": re_quality,
            "re_error": re_error,
        }
        return values

    class Meta:
        model = Records
        fields = ['re_fabrictype', 're_path', 're_qualityid','re_errorid', 're_quality', 're_error', 're_image']


class ReadOnlyRecordForm(forms.ModelForm):
    re_fabrictype = forms.CharField(label='Kumaş Türü', widget=forms.TextInput(
        attrs={'class': 'form-control mb-3'}), max_length=200,required=False)
    re_path = forms.CharField(label='Path', widget=forms.TextInput(
        attrs={'class': 'form-control mb-3'}), max_length=200, required=False)
    re_qualityid = forms.ModelChoiceField(label='Kalite Adı', queryset=QualityCodes.objects.all(), empty_label='Kaliteyi Seçin',  required=False,
                                          widget=forms.Select(attrs={'class': 'browser-default custom-select mb-3'}))
    re_errorid = forms.ModelChoiceField(label='Hata Adı', queryset=ErrorCodes.objects.all(), empty_label='Hatayı Seçin', required=False,
                                        widget=forms.Select(attrs={'class': 'browser-default custom-select mb-3'}))

    class Meta:
        model = Records
        fields = ['re_fabrictype', 're_path','re_qualityid' ,'re_errorid']

    

