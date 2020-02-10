"""tuvisai URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from main import views
from django.conf.urls.static import static
from django.conf import settings

urlpatterns = [
    path('admin/', admin.site.urls),
    path('login/', views.login, name="login"),
    path('logout/', views.logout, name="logout"),
    path('register/', views.register, name="register"),
    path('dashboard/', views.dashboard, name="dashboard"),
    path('records/', views.records, name="records"),
    path('errors/', views.errors, name="errors"),
    path('users/', views.users, name="users"),
    path('reports/', views.reports, name="reports"),
    path('qualities/', views.qualities, name="qualities"),
    path('adderror/', views.newError, name="newError"),
    path('addrecord/', views.newRecord, name="newRecord"),
    path('addquality/', views.newQuality, name="newQuality"),
    path('editError/<int:id>', views.editError, name="editError"),
    path('deleteError/<int:id>', views.deleteError, name="deleteError"),
    path('editQuality/<int:id>', views.editQuality, name="editQuality"),
    path('deleteQuality/<int:id>', views.deleteQuality, name="deleteQuality"),
    path('editRecord/<int:id>', views.editRecord, name="editRecord"),
    path('deleteRecord/<int:id>', views.deleteRecord, name="deleteRecord"),
    path('detailRecord/<int:id>', views.detailRecord, name="detailRecord"),
    path('api/data/', views.getChartData, name="chartdata"),
    path('api/data/2', views.newError2, name="errorRecordData"),
    path('errorRecord/', views.ErrorRecord, name="errorRecord"),
    path('streaming/', views.newError2, name="streaming"),
    path('', views.index, name="index"),
]
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
