from django.shortcuts import render, redirect
from .forms import rpsForm, referensiForm
from .models import rps

# Create your views here.
def index(request):
    semua_rps=rps.objects.all()
    context = {
        'appGroup':'Dosen',
        'appName':'Olah Data RPS',
        'semua_rps':semua_rps
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

def deleterps(request,del_id):
    rps.objects.get(id=del_id).delete()
    return redirect('olahDataRPS:index')
    

def updaterps(request,update_id):
    data_rps=rps.objects.get(id=update_id)
    dataFormRPS = {
        'kodemk':data_rps.kodemk,
        'dosenPengampu':data_rps.dosenPengampu,
        'capaianPembelajaran':data_rps.capaianPembelajaran,
        'prasyarat':data_rps.prasyarat,
        'pathLokasi':data_rps.pathLokasi,
        'deskripsi':data_rps.deskripsi
    }
    rps_form = rpsForm(request.POST or None, initial=dataFormRPS, instance=data_rps)
    if request.method == 'POST':
        if rps_form.is_valid():
            rps_form.save()
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