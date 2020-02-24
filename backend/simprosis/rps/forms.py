from django import forms
from django.contrib.auth.models import User
from . models import userProfiles

class userForm(forms.ModelForm):
    
    class Meta:
        model = User
        fields = [
            'first_name',
            'last_name',
            'email'
        ]
        labels = {
            'first_name':'Nama Depan',
            'last_name':'Nama Belakang',
            'email':'E - Mail'
        }

        widgets = {
            'first_name':forms.TextInput(
                attrs={
                    'class':'form-control form-control-sm',
                    'placeholder':'Masukkan Nama Depan'
                }
            ),
            'last_name':forms.TextInput(
                attrs={
                    'class':'form-control form-control-sm',
                    'placeholder':'Masukkan Nama Belakang'
                }
            ),
            'email':forms.EmailInput(
                attrs={
                    'class':'form-control form-control-sm',
                    'placeholder':'Masukkan E-Mail aktif'
                }
            )
        }

class userProfilesForm(forms.ModelForm):
    
    class Meta:
        model = userProfiles
        fields = [
            # 'namaUser',
            'noKTP',
            'nama',
            'alamat',
            'tanggalLahir',
            'jenisKelamin',
            'agama'
        ]
        labels = {
            # 'namaUser':'Nama Pengguna',
            'noKTP':'Nomor KTP / NIK',
            'nama':'Nama Lengkap Pengguna',
            'alamat':'Alamat',
            'tanggalLahir':'Tanggal Lahir',
            'jenisKelamin':'Jenis Kelamin',
            'agama':'agama',
        }
        widgets = {
            # 'namaUser':forms.Select(
            #     attrs={
            #         'class':'form-control form-control-sm',
            #         'readonly':True,
            #         # 'disabled':True       
            #     }
            # ),
            'noKTP':forms.TextInput(
                attrs={
                    'class':'form-control form-control-sm',
                    'placeholder':'Masukkan Nomor KTP / NIK'
                }
            ),
            'nama':forms.TextInput(
                attrs={
                    'class':'form-control form-control-sm',
                    'placeholder':'Masukkan Nama Lengkap'
                }
            ),
            'alamat':forms.TextInput(
                attrs={
                    'class':'form-control form-control-sm',
                    'placeholder':'Masukkan Alamat'
                }
            ),
            'tanggalLahir':forms.DateInput(
                attrs={
                    'class':'kalender',
                    'placeholder':'Masukkan Tangal Lahir'
                }
            ),
            'jenisKelamin':forms.Select(
                attrs={
                    'class':'form-control form-control-sm'
                }
            ),
            'agama':forms.Select(
                attrs={
                    'class':'form-control form-control-sm'
                }
            )
        }


