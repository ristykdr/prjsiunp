from django.shortcuts import render, redirect
from . models import matakuliah
from django.http import HttpResponse
from .forms import matakuliahForm

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

def create(request):
    print('ini create bro')
    mk_form=matakuliahForm(request.POST or None)
    if request.method=='POST':
        if mk_form.is_valid():
            mk_form.save()
            return redirect('olahDataMatakuliah:index')
    context={
        'appGroup':'Operasional',
        'appName':'Tambah Matakuliah',
        'mk_form':mk_form
    }
    return render(request,'olahDataMatakuliah/create.html',context)