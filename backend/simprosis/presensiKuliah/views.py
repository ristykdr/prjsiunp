from django.shortcuts import render

# Create your views here.
def index(request):
    context = {
        'appGroup':'Presensi',
        'appName':'Presensi Kuliah',
    }
    return render (request,'presensiKuliah/index.html',context)