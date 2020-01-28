#views RPS
from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def index(request): #index dari rps
    context = {
        'judul':'Home RPS',
        'subjudul':'subjudul home rps',
        'nav':[
            ['/','Home'],
            ['','RPS'],
        ],
        'subnav':[
            ['submenurps/','Sub-menu RPS'],
        ],
        'banner':'rps/img/rps.png',
        'css_app':'rps/css/styles.css',
    }
    return render(request,'index.html',context)

def submenurps(request):
    context={
        'judul':'submenu RPS',
        'subjudul':'subjudul submenu rps',
    }
    return render(request,'index.html',context)