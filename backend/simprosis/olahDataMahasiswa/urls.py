from django.urls import path, re_path, include
from django.conf.urls import url
from . import views

app_name='olahDataMahasiswa'
urlpatterns = [
    re_path(r'^$',views.index, name='index'),
    re_path(r'^create/$',views.create,name='create'),
    re_path(r'^delete/(?P<update_id>[0-9]+)$',views.update,name='update'),
    re_path(r'^update/(?P<del_id>[0-9]+)$',views.delete,name='delete')
]
