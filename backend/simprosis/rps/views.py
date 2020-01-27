#views RPS
from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def index(request): #index dari rps
    context = {
        'judul':'Home RPS',
        'subjudul':'subjudul home rps',
    }
    return render(request,'rps/index.html',context)

def submenurps(request):
    context={
        'judul':'submenu RPS',
        'subjudul':'subjudul submenu rps',
    }
    return render(request,'rps/index.html',context)