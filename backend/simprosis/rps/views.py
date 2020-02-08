#views RPS
from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def index(request): #index dari rps
    context = {
        'appGroup':'Olah Data RPS',
        'appName':'subjudul home rps',
        'nav':[
            ['/','Home'],
            ['','RPS'],
        ],
        'subnav':[
            ['submenurps/','Sub-menu RPS'],
            ['#','mennu 2'],
            ['#','menu3']
        ],
        'banner':'',
        'css_app':'rps/css/styles.css',
    }
    return render(request,'rps/index.html',context)

def submenurps(request):
    context={
        'judul':'submenu RPS',
        'subjudul':'subjudul submenu rps',
    }
    return render(request,'index.html',context)