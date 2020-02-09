from django.shortcuts import render

# Create your views here.
def index (request) :
    context = {
        'appGroup':'Operasional',
        'appName': 'Olah Data Mahasiswa',
    }
    return render (request,'olahDataMahasiswa/index.html',context)