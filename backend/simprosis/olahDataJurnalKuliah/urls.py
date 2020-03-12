from django.urls import path, re_path, include
from django.conf.urls import url
from . import views

app_name='olahDataJurnalKuliah'
urlpatterns = [
    re_path(r'^$',views.jurnalKuliahListView.as_view(),name='jurnalKuliahList'),
    re_path(r'^createjurnal/$',views.jurnalPerkuliahanCreateView.as_view(),name='jurnal-add'),
    re_path(r'^updatejurnal/(?P<pk>[0-9]+)$',views.jurnalPerkuliahanUpdateView.as_view(),name='jurnal-update'),
    re_path(r'^deletejurnal/(?P<pk>[0-9]+)$',views.jurnalKuliahDeleteView.as_view(),name='jurnal-delete')
]
