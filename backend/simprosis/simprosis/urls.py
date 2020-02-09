"""simprosis URL Configuration

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
from django.urls import path, re_path, include
from .import views

urlpatterns = [
    path('admin/', admin.site.urls),
    re_path(r'^rps/',include('rps.urls')), #menghubungkan url rps dengan url project simprosis
    re_path(r'^biodataDosen/',include('biodataDosen.urls')),
    re_path(r'^biodataMahasiswa/',include('biodataMahasiswa.urls')),
    re_path(r'^inputKRS/',include('inputKRS.urls')),
    re_path(r'^olahDataDosen/',include('olahDataDosen.urls')),
    re_path(r'^olahDataJurnalKuliah/',include('olahDataJurnalKuliah.urls')),
    re_path(r'^olahDataMahasiswa/',include('olahDataMahasiswa.urls')),
    re_path(r'^olahDataMatakuliah/',include('olahDataMatakuliah.urls')),
    re_path(r'^olahDataNilai/',include('olahDataNilai.urls')),
    re_path(r'^olahDataRPS/',include('olahDataRPS.urls')),
    re_path(r'^presensiKuliah/',include('presensiKuliah.urls')),
    re_path(r'^rekapHasilKuliah/',include('rekapHasilKuliah.urls')),
    re_path(r'^rekapKRS/',include('rekapKRS.urls')),
    re_path(r'^rekapPresensi/',include('rekapPresensi.urls')),
    re_path(r'^rekapRPS/',include('rekapRPS.urls')),
    re_path(r'^subPokokBahasan/',include('subPokokBahasan.urls')),
    re_path(r'^tes/$',views.tes),
    path('',views.index)
]
