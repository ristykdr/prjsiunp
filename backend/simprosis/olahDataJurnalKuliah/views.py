from django.shortcuts import render
from django.db import transaction
from django.urls import reverse_lazy
from django.views.generic import CreateView, DeleteView, ListView, UpdateView
from . forms import (
        jurnalKuliahForm, 
        detilJurnalKuliahForm, 
        JurnalFormset, 
        jurnalKuliahForm
    )
from . models import jurnalKuliah, detilJurnalKuliah

# Create your views here.
def index (request):
    context = {
        'appGroup' : 'Operasional',
        'appName' : 'Olah Data Jurnal Kuliah',
    }
    return render(request,'olahDataJurnalKuliah/index.html',context)


class jurnalKuliahListView(ListView):
    model = jurnalKuliah
    ordering =['-id']
    extra_context = {
        'appGroup' : 'Operasional',
        'appName' : 'Olah Data Jurnal Kuliah',
    }
    
    def get_context_data(self, *args, **kwargs):
        self.kwargs.update(self.extra_context)
        kwargs = self.kwargs
        return super().get_context_data(*args, **kwargs)


class jurnalKuliahCreateView(CreateView):
    form_class = jurnalKuliahForm
    template_name = 'olahDataJurnalKuliah/jurnalkuliah_form.html'
    extra_context = {
        'appGroup':'Operasional',
        'appName':'Olah Data Jurnal Kuliah', 
    }

    def get_context_data(self,*args, **kwargs):
        self.kwargs.update(self.extra_context)
        kwargs = self.kwargs
        # print(kwargs)
        return super().get_context_data(*args, **kwargs)
    # model = jurnalKuliah

    # fields = [
    #     'mk',
    #     'tahunAjaran',
    #     'semester',
    #     'dosenPengajar',
    #     'ruang',
    #     'pjmk'
    # ]


class jurnalPerkuliahanCreateView(CreateView):
    model = jurnalKuliah
    fields = [
        'mk',
        'tahunAjaran',
        'semester',
        'dosenPengajar',
        'ruang',
        'pjmk'
    ]
    success_url = reverse_lazy('olahDataJurnalKuliah:jurnalKuliahList')

    def get_context_data(self, **kwargs):
        data = super(jurnalPerkuliahanCreateView, self).get_context_data(**kwargs)
        if self.request.POST :
            data['dtlJurnalKuliah']=JurnalFormset(self.request.POST)
        else:
            data['dtlJurnalKuliah']=JurnalFormset()
        return data
    
    def form_valid(self, form):
        context = self.get_context_data()
        dtlJurnalKuliah = context['dtlJurnalKuliah']
        with transaction.atomic():
            self.object = form.save()
            if dtlJurnalKuliah.is_valid():
                dtlJurnalKuliah.instance=self.object
                dtlJurnalKuliah.save()
        return super(jurnalPerkuliahanCreateView,self).form_valid(form)


class jurnalKuliahUpdateView(UpdateView):
    model = jurnalKuliah
    success_url = reverse_lazy('olahDataJurnalKuliah:jurnalKuliahList')
    fields = [
        'mk',
        'tahunAjaran',
        'semester',
        'dosenPengajar',
        'ruang',
        'pjmk'
    ]


class jurnalPerkuliahanUpdateView(UpdateView):
    model = jurnalKuliah
    fields = [
        'mk',
        'tahunAjaran',
        'semester',
        'dosenPengajar',
        'ruang',
        'pjmk'
    ]
    success_url = reverse_lazy('olahDataJurnalKuliah:jurnalKuliahList')
    
    def get_context_data(self,**kwargs):
        data = super(jurnalPerkuliahanUpdateView, self).get_context_data(**kwargs)
        if self.request.POST :
            data['dtlJurnalKuliah']=JurnalFormset(self.request.POST, instance=self.object)
        else:
            data['dtlJurnalKuliah']=JurnalFormset(instance = self.object)
        return data
    
    def form_valid(self, form):
        context = self.get_context_data()
        dtlJurnalKuliah = context['dtlJurnalKuliah']
        with transaction.atomic():
            self.object = form.save()
            if dtlJurnalKuliah.is_valid():
                dtlJurnalKuliah.instance=self.object
                dtlJurnalKuliah.save()
        return super(jurnalPerkuliahanUpdateView,self).form_valid(form)
    

class jurnalKuliahDeleteView(DeleteView):
    model = jurnalKuliah
    success_url = reverse_lazy('olahDataJurnalKuliah:jurnalKuliahList')
