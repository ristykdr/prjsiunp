from django.shortcuts import render

# Create your views here.
def index(request):
    context = {
        'appGroup':'Dosen',
        'appName':'Olah Data RPS',
    }
    return render(request,'olahDataRPS/index.html',context)