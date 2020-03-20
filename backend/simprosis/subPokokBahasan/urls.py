from django.urls import path, re_path, include
from django.conf.urls import url
from . views import (
    jurnalKuliahListView, 
    jurnalKuliahDetailView,
    detilJurnalKuliahCreateView,
    detilJurnalKuliahUpdateView,
    detilJurnalKuliahDeleteView,
    detilRPSListView,
)

app_name='subPokokBahasan'
urlpatterns = [
    # re_path(r'^$',views.index,name='index'),
    re_path(r'^$', jurnalKuliahListView.as_view(),name='index'),
    re_path(r'^(?P<pk>[0-9]+)$',jurnalKuliahDetailView.as_view(), name='detiljurnalkuliah'),
    re_path(r'^createdetiljurnal/(?P<id_jurnal>[0-9]+)$',detilJurnalKuliahCreateView.as_view(),name='createdetiljurnal'),
    re_path(r'^detiljurnalfromrps/(?P<id_rps>[0-9]+)$',detilRPSListView.as_view(),name='detiljurnalfromrps'),
    re_path(r'^updatedetiljurnal/(?P<pk>[0-9]+)$',detilJurnalKuliahUpdateView.as_view(),name='updatedetiljurnal'),
    re_path(r'^deletedetiljurnal/(?P<pk>[0-9]+)$',detilJurnalKuliahDeleteView.as_view(),name='deletedetiljurnal'),

]
