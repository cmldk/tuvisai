from django.db import models


class ErrorCodes(models.Model):
    er_id = models.AutoField(primary_key=True,verbose_name="ID")
    er_code = models.CharField(max_length=300, verbose_name="Error Code")
    er_name = models.CharField(max_length=300, verbose_name="Error Name")
    er_createdat = models.DateTimeField(blank=True, null=True, verbose_name="Created At", auto_now_add=True)
    er_editedat = models.DateTimeField(blank=True, null=True, verbose_name="Edited At")
    er_createdby = models.ForeignKey('Users', models.DO_NOTHING, db_column='er_createdby', blank=True, null=True, default=0, verbose_name="Created By")

    class Meta:
        managed = False
        db_table = 'error_codes'
    
    def __str__(self):
        return self.er_name

    @property
    def codeName(self):
        return "%s___%s" % (self.er_code, self.er_name)

class QualityCodes(models.Model):
    qu_id = models.AutoField(primary_key=True, verbose_name="ID")
    qu_code = models.CharField(max_length=300,verbose_name="Quality Code")
    qu_name = models.CharField(max_length=300, verbose_name="Quality Name")
    qu_createdat = models.DateTimeField(blank=True, null=True,verbose_name="Created At",auto_now_add=True)
    qu_editedat = models.DateTimeField(blank=True, null=True, verbose_name="Edited At")
    qu_createdby = models.ForeignKey('Users', models.DO_NOTHING, db_column='qu_createdby', blank=True, null=True, verbose_name="Created By",default=0)

    class Meta:
        managed = False
        db_table = 'quality_codes'

    def __str__(self):
        return self.qu_name

    @property
    def codeName(self):
        return "%s___%s" % (self.qu_code, self.qu_name)

def image_directory_path(instance,filename):
    if "/" in instance.re_qualityid.qu_name:
        inst = instance.re_qualityid.qu_name.replace("/","-")
    else:
        inst = instance.re_qualityid.qu_name

    if "/" in instance.re_errorid.er_name:
        inst = instance.re_errorid.er_name.replace("/", "-")
    else:
        inst = instance.re_errorid.er_name
        
    return '{0}/{1}/{2}/{3}'.format(instance.re_fabrictype, instance.re_qualityid.qu_code + "___" + inst, instance.re_errorid.er_code + "___" + instance.re_errorid.er_name, filename)

class Records(models.Model):
    re_id = models.AutoField(primary_key=True, verbose_name="ID")
    re_fabrictype = models.CharField(max_length=300,verbose_name="Kumaş Türü")
    re_path = models.CharField(max_length=300, verbose_name="Path")
    re_labeledby = models.ForeignKey(
        'Users', models.DO_NOTHING, db_column='re_labeledby', verbose_name="Labeled By")
    re_createdat = models.DateTimeField(verbose_name="Created At", auto_now_add=True)
    re_editedat = models.DateTimeField(verbose_name="Edited At")
    re_qualityid = models.ForeignKey(
        QualityCodes, models.DO_NOTHING, db_column='re_qualityid', verbose_name="Kalite Adı")
    re_errorid = models.ForeignKey(
        ErrorCodes, models.DO_NOTHING, db_column='re_errorid', verbose_name="Hata Adı")
    re_image = models.ImageField(
        max_length=300, blank=True, null=True, verbose_name="Fotoğraf", upload_to=image_directory_path)

    @property
    def quCodeName(self):
        return "%s___%s" % (self.re_qualityid.qu_code, self.re_qualityid.qu_name)

    @property
    def erCodeName(self):
            return "%s___%s" % (self.re_errorid.er_code, self.re_errorid.qu_name)

    @property
    def get_year(self):
        return self.re_createdat.strftime("%Y")
    
    @property
    def get_month(self):
        return self.re_createdat.strftime("%m")
    @property
    def get_day(self):
        return self.re_createdat.strftime("%d")

    class Meta:
        managed = True
        db_table = 'records'

    def __str__(self):
        user = Users.objects.get(us_name=self.re_labeledby)
        return user.us_name


class Users(models.Model):
    us_id = models.AutoField(primary_key=True, verbose_name="ID")
    us_email = models.CharField(max_length=300, verbose_name="Email")
    us_name = models.CharField(max_length=300, verbose_name="Username")
    us_password = models.CharField(
        max_length=300, blank=True, null=True, verbose_name="Password")
    us_role = models.CharField(
        max_length=300, blank=True, null=True, verbose_name="Role")
    us_fname = models.CharField(max_length=300, verbose_name="First Name")
    us_lname = models.CharField(max_length=300, verbose_name="Last Name")
    us_lastseen = models.DateTimeField(blank=True, null=True, verbose_name="Last Seen")

    class Meta:
        managed = False
        db_table = 'users'

    def __str__(self):
        return self.us_name
