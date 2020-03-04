from django import forms
from . models import mahasiswa

class mahasiswaForm(forms.ModelForm):

    class Meta:

        model = mahasiswa
        fields = {
            'nik',
            'npm',
            'tahunMasuk',
            'kelas'
        }
        labels = {
            'nik':'Pilih user sebagai mahasiswa',
            'npm':'Nomor Induk/Pokok Mahasiswa',
            'tahunMasuk':'Tahun Masuk mahasiswa',
            'kelas':'Kelas'
        }
        widgets = {
            'nik':forms.Select(
                attrs={
                    'class':'form-control form-control-sm',
                    'placeholder':'Pilih User'
                }
            ),
            # 'nik':forms.ModelChoiceField(queryset=userProfiles.objects.exclude(id__in=dosen.objects.all().values_list('nik_id',flat=True))
                # attrs={
                #     # 'queryset':'userProfiles.objects.exclude(id__in=dosen.objects.all().values_list('nik_id',flat=True))',
                #     'class':'form-control form-control-sm',
                #     'placeholder':'Pilih User'
                # }
            # ),
            'npm':forms.TextInput(
                attrs={
                    'class':'form-control form-control-sm',
                    'placeholder':'Contoh : xx.xx.xx.xxxx'
                }
            ),
            'tahunMasuk':forms.Select(
                attrs={
                    'class':'form-control form-control-sm',
                    'placeholder':'Tahun masuk',
                    # 'type':'date'
                }
            ),
            'kelas':forms.TextInput(
                attrs={
                    'class':'form-control form-control-sm',
                    'placeholder':'Masukkan kelas'
                }
            )
        }

