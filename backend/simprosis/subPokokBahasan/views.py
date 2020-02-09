from django.shortcuts import render

# Create your views here.
def index(request):
    context = {
        'appGroup':'Presensi',
        'appName':'SuB Pokok Bahasan',
    }
    return render(request,'subPokokBahasan/index.html',context)