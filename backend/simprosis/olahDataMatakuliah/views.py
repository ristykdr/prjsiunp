from django.shortcuts import render
from . models import matakuliah
from django.http import HttpResponse

# Create your views here.
data_mk = matakuliah.objects.all()
print (data_mk)
def index (request):
    context = {
        'appGroup':'Operasional',
        'appName':'Olah Data Matakuliah',
        'datamk':data_mk,
    }
    return render(request,'olahDataMatakuliah/index.html',context)
def link(request,inputan):
    getlink = inputan
    return HttpResponse(getlink)