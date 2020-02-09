from django.shortcuts import render

# Create your views here.
def index (request):
    context = {
        'appGroup':'Operasional',
        'appName':'Olah Data Matakuliah',
    }
    return render(request,'olahDataMatakuliah/index.html',context)