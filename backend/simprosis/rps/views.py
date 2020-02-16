#views RPS
from django.shortcuts import render, redirect
from django.http import HttpResponse
from  . models import userProfiles
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
from django.db import transaction
from . forms import userForm, userProfiles
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

# @login_required
# @transaction.atomic
# def profile(request):
#     if request.method == 'POST':
#         user_form = userForm(request.POST, instance=request.user)
#         profile_form = userProfiles(request.POST, instance=request.user.profile)
#         if user_form.is_valid() and profile_form.is_valid():
#             user_form.save()
#             profile_form.save()
#             messages.success(request, _('Your profile was successfully updated!'))
#             return redirect('settings:profile')
#         else:
#             messages.error(request, _('Please correct the error below.'))
#     else:
#         user_form = userForm(instance=request.user)
#         profile_form = userProfiles(instance=request.user.profile)
#     return render(request, 'profiles/profile.html', {
#         'user_form': user_form,
#         'profile_form': profile_form
#     })