from django.urls import path, re_path, include
from django.conf.urls import url
from . import views


app_name='rekapKRS'
urlpatterns = [
    re_path(r'^$',views.index, name='index')
]
