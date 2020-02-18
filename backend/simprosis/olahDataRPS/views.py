from django.shortcuts import render, redirect
from .forms import rpsForm, referensiForm
from .models import rps

# Create your views here.
def index(request):
    context = {
        'appGroup':'Dosen',
        'appName':'Olah Data RPS',
    }
    return render(request,'olahDataRPS/index.html',context)


def createrps(request):
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

def createreferensi(request):
    referensi_form = referensiForm(request.POST or None)
    if request.method == 'POST':
        if referensi_form.is_valid():
            referensi_form.save()

            return redirect('olahDataRPS:index') 
            #sementara, akan dipidah di homereferensi.html
    context = {
        'appGroup':'Dosen',
        'appName':'Create Data Referensi',
        'referensi_form':referensi_form
    }
    return render(request,'olahDataRPS/createreferensi.html',context)