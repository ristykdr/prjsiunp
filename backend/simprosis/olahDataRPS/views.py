from django.shortcuts import render, redirect
from django.views.generic import ListView, DetailView, CreateView
from .forms import rpsForm, referensiForm,detilRPSForm
from .models import rps, detilRPS

# Create your views here.

class rpsListView(ListView):
    model = rps
    # template_name = "TEMPLATE_NAME"
    ordering = ['-id']
    paginate_by = 10
    extra_context = {
        'appGroup':'Dosen',
        'appName':'Olah Data RPS', 
    }

    def get_context_data(self, *args, **kwargs):
        self.kwargs.update(self.extra_context)
        kwargs = self.kwargs
        return super().get_context_data(*args, **kwargs)



class rpsDetailView(DetailView):
    model = rps
    # template_name = "TEMPLATE_NAME"
    extra_context = {
        'appGroup':'Dosen',
        'appName':'Olah Data RPS', 
    }

    def get_context_data(self, *args, **kwargs):
        self.kwargs.update(self.extra_context)
        
        rincianRps = detilRPS.objects.filter(idRps_id=self.kwargs['pk'])
        self.kwargs.update({'rincianRps':rincianRps})

        kwargs = self.kwargs
        # print(kwargs)
        # print('HALOOOOOOO')
        # print(kwargs['pk'])
        return super().get_context_data(*args, **kwargs)
    


class detilRPSCreateView(CreateView):
    form_class = detilRPSForm
    # model = detilRPS
    template_name = 'olahDataRPS/createDetilRPS.html'
    extra_context = {
        'appGroup':'Dosen',
        'appName':'Olah Data RPS', 
    }

    def get_context_data(self,*args, **kwargs):
        self.kwargs.update(self.extra_context)
        kwargs = self.kwargs
        print(kwargs)
        return super().get_context_data(*args, **kwargs)


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
        'deskripsi':data_rps.deskripsi,

        'tanggalPenyusunan':data_rps.tanggalPenyusunan,
        'capaianPembelajaranProdi':data_rps.capaianPembelajaranProdi,
        'materiPembelajaran':data_rps.materiPembelajaran,
        'mediaBelajar':data_rps.mediaBelajar,
        'teamTeaching':data_rps.teamTeaching,
        # 'idref':data_rps.idref
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

