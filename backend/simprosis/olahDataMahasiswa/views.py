from django.shortcuts import render, redirect
from .forms import mahasiswaForm
from .models import mahasiswa
# Create your views here.
def index (request) :
    semua_mahasiswa = mahasiswa.objects.all()
    # print(semua_mahasiswa)
    context = {
        'appGroup':'Operasional',
        'appName': 'Olah Data Mahasiswa',
        'semua_mahasiswa':semua_mahasiswa
    }
    return render (request,'olahDataMahasiswa/index.html',context)

def create(request):
    formMahasiswa = mahasiswaForm(request.POST or None)
    if request.method=='POST':
        if formMahasiswa.is_valid():
            formMahasiswa.save()
            return redirect('olahDataMahasiswa:index')
    context = {
        'appGroup':'Operasional',
        'appName': 'Tambah Data Mahasiswa',
        'formMahasiswa':formMahasiswa
    }
    return render(request,'olahDataMahasiswa/create.html',context)

def delete(request,del_id):
    mahasiswa.objects.get(id=del_id).delete()
    return redirect('olahDataMahasiswa:index')

def update(request,update_id):
    dataMahasiswa = mahasiswa.objects.get(id=update_id)
    dataFormMahasiswa = {
        'nik':dataMahasiswa.nik,
        'npm':dataMahasiswa.npm,
        'tahunMasuk':dataMahasiswa.tahunMasuk,
        'kelas':dataMahasiswa.kelas
    }
    formMahasiswa = mahasiswaForm(request.POST or None, initial=dataFormMahasiswa, instance=dataMahasiswa)
    if request.method=='POST':
        if formMahasiswa.is_valid():
            formMahasiswa.save()
            return redirect('olahDataMahasiswa:index')
    context = {
        'appGroup':'Operasional',
        'appName': 'Tambah Data Mahasiswa',
        'formMahasiswa':formMahasiswa
    }
    return render(request,'olahDataMahasiswa/create.html',context)