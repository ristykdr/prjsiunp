from django.shortcuts import render

# Create your views here.
def index(request) :
    context = {
        'appGroup' : 'Mahasiswa',
        'appName' : 'Biodata Mahasiswa',
    }
    return render (request,'biodataMahasiswa/index.html',context)