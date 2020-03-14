from django.urls import path, re_path, include
from django.conf.urls import url
from django.views.generic import ListView
from .views import(
    index,createrps,deleterps, updaterps,
    createreferensi,
    rpsListView, rpsDetailView,detilRPSCreateView
) 

app_name='olahDataRPS'
urlpatterns = [
    re_path(r'^$',rpsListView.as_view(), name='index'),
    re_path(r'^(?P<pk>[0-9]+)$',rpsDetailView.as_view(),name='detailrps'),
    re_path(r'^createdetailrps/(?P<id_rps>[0-9]+)$',detilRPSCreateView.as_view(),name='createdetailrps'),
    # (?P<id_rps>[0-9]+)
    # re_path(r'^$',index, name='index'),
    re_path(r'^createrps/$',createrps, name='createrps'),
    re_path(r'^deleterps/(?P<del_id>[0-9]+)$',deleterps, name='deleterps'),
    re_path(r'^updaterps/(?P<update_id>[0-9]+)$',updaterps, name='updaterps'),
    re_path(r'^createreferensi$',createreferensi, name='createreferensi')
]
