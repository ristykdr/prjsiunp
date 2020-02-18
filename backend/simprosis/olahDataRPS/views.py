from django.shortcuts import render, redirect
from .forms import rpsForm
from .models import rps

# Create your views here.
def index(request):
    context = {
        'appGroup':'Dosen',
        'appName':'Olah Data RPS',
    }
    return render(request,'olahDataRPS/index.html',context)


def create(request):
    rps_form = rpsForm(request.POST or None)
    if request.method == 'POST':
        if rps_form.is_valid():
            rps_form.save()
            # rps.objects.create(
            #     kodemk = request.POST.get('kodemk'),
            #     dosenPengampu = request.POST.get('dosenPengampu'),
            #     capaianPembelajaran = request.POST.get('capaianPembelajaran'),
            #     prasyarat = request.POST.get('prasyarat'),
            #     pathLokasi = request.POST.get('pathLokasi'),
            #     deskripsi = request.POST.get('deskripsi')
            # )
            return redirect('olahDataRPS:index')
    context = {
        'appGroup':'Dosen',
        'appName':'Create Data RPS',
        'rps_form':rps_form
    }
    return render(request,'olahDataRPS/create.html',context)