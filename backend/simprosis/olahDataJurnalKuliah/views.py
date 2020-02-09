from django.shortcuts import render

# Create your views here.
def index (request):
    context = {
        'appGroup' : 'Operasional',
        'appName' : 'Olah Data Jurnal Kuliah',
    }
    return render(request,'olahDataJurnalKuliah/index.html',context)