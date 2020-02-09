from django.shortcuts import render

# Create your views here.
def index(request):
    context = {
        'appGroup':'Dosen',
        'appName' : 'Biodata Dosen',
    }
    return render(request,'biodataDosen/index.html',context)