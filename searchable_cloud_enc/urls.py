"""searchable_cloud_enc URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
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
from . import views
urlpatterns = [
    path('admin/', admin.site.urls),
    path('',views.index),
    path('home/',views.index),
    path('login/',views.login),
    path('user/',views.user),
    path('logout/',views.logout),
    path('Cities/',views.Cities),
    path('registeruser/',views.registeruser),
    path('upload/',views.upload),
    path('uploaddoc/',views.uploaddoc),
    path('download/',views.getDocs),
    path('sendotp/',views.sendotp),
    path('otpverification/',views.otpverification),
    path('searchdocs/',views.searchdocs),
    path('delete/',views.deletedoc),
    path('cloudpayment/',views.cloudpayment),
    path('GetPaymentDetails/',views.GetPaymentDetails)
    
    
    
    
]
