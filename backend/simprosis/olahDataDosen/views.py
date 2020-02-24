from django.shortcuts import render,redirect
from . forms import dosenForm
from .models import dosen
from django.contrib import messages

# Create your views here.
def index (request) :
    context = {
        'appGroup' : 'Operasional',
        'appName' : 'Olah Data Dosen',
    }
    return render(request,'olahDataDosen/index.html',context)

def create(request):
    formDosen = dosenForm(request.POST or None)
    # print (dosenForm.re)
    if request.method=='POST':
        if formDosen.is_valid():
            formDosen.save()
            # return redirect('olahDataDosen:create')
            pesan=messages.success(request,'data berhasil tersimpan')
            return redirect('olahDataDosen:create')
        else:
            pesan=messages.error(request,'gagal')
    context={
        'appGroup' : 'Operasional',
        'appName' : 'Tambah Data Dosen',
        'formDosen':formDosen,
        'pesan':pesan
    }
    return render(request,'olahDataDosen/create.html',context)