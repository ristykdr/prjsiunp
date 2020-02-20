#views RPS
from django.shortcuts import render, redirect
from django.http import HttpResponse
from  . models import userProfiles
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
from django.db import transaction
from . forms import userForm, userProfilesForm
from django.contrib import messages

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

@login_required
@transaction.atomic
def profile(request):
    pengguna=request.user.username
    # print('BROOOOO')
    # print(pengguna)
    data_user = User.objects.get(username=pengguna)
    id_pengguna=data_user.id
    dataFormUser = {
        'first_name': data_user.first_name,
        'last_name':data_user.last_name,
        'email':data_user.email,
    }
    data_profile = userProfiles.objects.get(namaUser_id=id_pengguna)
    dataFormProfile = {
        # 'namaUser':data_profile.namaUser,
        'noKTP':data_profile.noKTP,
        'nama':data_profile.nama,
        'alamat':data_profile.alamat,
        'tanggalLahir':data_profile.tanggalLahir,
        'jenisKelamin':data_profile.jenisKelamin,
        'agama':data_profile.agama,
    }
    user_form = userForm(request.POST or None, initial=dataFormUser, instance=data_user)
    profile_form = userProfilesForm(request.POST or None, initial=dataFormProfile, instance=data_profile)
    if request.method=='POST' :
        if user_form.is_valid() and profile_form.is_valid():
            user_form.save()
            profile_form.save()
        return redirect('rps:profile')
    
    context ={
        'appGroup':'User Profiles',
        'appName':'Detail User : '+data_user.username,
        'user_form': user_form,
        'profile_form': profile_form
    }
    return render(request,'rps/profile.html',context)


