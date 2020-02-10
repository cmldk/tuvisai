from django.contrib import admin
from .models import Records,Users,QualityCodes,ErrorCodes


@admin.register(Records)
class RecordsAdmin(admin.ModelAdmin):

    list_display = ["re_labeledby", "re_id","re_fabrictype", "re_qualityid", "re_errorid"]
    search_fields = ["re_fabrictype","re_labeledby"]
    list_filter = ["re_fabrictype"]
    readonly_fields = ["re_createdat"]

    class Meta: 
        model = Records
        
@admin.register(Users)
class UsersAdmin(admin.ModelAdmin):

    list_display = ["us_name", "us_id"]
    search_fields = ["us_name", "us_fname","us_sname"]
    readonly_fields = ["us_lastseen"]

    class Meta:
        model = Users

@admin.register(QualityCodes)
class QualityAdmin(admin.ModelAdmin):

    list_display = ["qu_name", "qu_code","qu_id"]
    search_fields = ["qu_name"]
    list_filter = ["qu_createdat"]
    readonly_fields = ["qu_createdat"]

    class Meta:
        model = QualityCodes


@admin.register(ErrorCodes)
class ErrorAdmin(admin.ModelAdmin):

    list_display = ["er_name","er_code","er_id"]
    search_fields = ["er_name"]
    list_filter = ["er_createdat"]
    readonly_fields = ["er_createdat"]
    class Meta:
        model = ErrorCodes
