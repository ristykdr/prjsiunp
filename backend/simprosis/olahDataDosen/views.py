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
    pesan=None
    formDosen = dosenForm(request.POST or None)
    if request.method=='POST':
        if formDosen.is_valid():
            formDosen.save()
            pesan='berhasil'
            return redirect('olahDataDosen:index')
        else:
            pesan='Gagal menyimpan. User atau NIDN sudah, ada silahkan pilih User atau NIDN lain  '

    context={
        'appGroup' : 'Operasional',
        'appName' : 'Tambah Data Dosen',
        'formDosen':formDosen,
        'pesan':pesan

    }
    return render(request,'olahDataDosen/create.html',context)