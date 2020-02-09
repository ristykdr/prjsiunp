from django.shortcuts import render

# Create your views here.
def index (request) :
    context = {
        'appGroup' : 'Operasional',
        'appName' : 'Olah Data Dosen',
    }
    return render(request,'olahDataDosen/index.html',context)