from django import forms
from django.contrib.auth.models import User
from . models import userProfiles

class userForm(forms.ModelForm):
    
    class Meta:
        model = User
        fields = ('first_name','last_name','email')

class userProfilesForm(forms.ModelForm):
    
    class Meta:
        model = userProfiles
        fields = (
            'namaUser',
            'noKTP',
            'nama',
            'alamat',
            'tanggalLahir',
            'jenisKelamin',
            'agama'
            )


