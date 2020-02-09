from django.shortcuts import render

# Create your views here.
def index(request):
    context = {
        'appGroup':'Dosen',
        'appName':'Olah Data Nilai',
    }
    return render(request,'olahDataNilai/index.html',context)