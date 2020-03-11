from django import forms
from django.forms import ModelForm, inlineformset_factory
from .models import rps, referensi, rps
from tinymce.widgets import TinyMCE


class rpsForm(forms.ModelForm):
    
    class Meta:
        model = rps
        fields = [
            'kodemk',
            'dosenPengampu',
            'capaianPembelajaran',
            'prasyarat',
            'pathLokasi',
            'deskripsi',

            'tanggalPenyusunan',
            'capaianPembelajaranProdi',
            'materiPembelajaran',
            'mediaBelajar',
            'teamTeaching',
            # 'idref'
        ]
        labels = {
            'kodemk':'Matakuliah',
            'dosenPengampu':'Dosen Pengampu',
            'capaianPembelajaran':'Capaian Pembelajaran',
            'prasyarat':'Matakuliah Prasyarat',
            'pathLokasi':'File',
            'deskripsi':'Deskripsi',

            'tanggalPenyusunan': 'Tanggal Penyusunan',
            'capaianPembelajaranProdi':'Capaian Pembelajaran Program Studi',
            'materiPembelajaran':'Materi Pembelajaran',
            'mediaBelajar':'Media Belajar',
            'teamTeaching':'Dosen Team Teaching',
            # 'idref':'Referensi'
        }

        widgets = {
            'kodemk':forms.Select(
                attrs={
                    'class':'form-control form-control-sm',
                    'placeholder':'Pilih Matakuliah'
                }
            ),
            'dosenPengampu':forms.Select(
                attrs={
                    'class':'form-control form-control-sm',
                    'placeholder':'Pilih Dosen Pengampu'
                }
            ),
            'capaianPembelajaran':forms.Textarea(
                attrs={
                    'class':'form-control form-control-sm'
                }
            ),
            'prasyarat':forms.Select(
                attrs={
                    'class':'form-control form-control-sm'
                }
            ),
            'pathLokasi':forms.TextInput(
                attrs={
                    'class':'form-control form-control-sm',
                    'placeholder':'File Path'
                }
            ),
            'deskripsi':forms.Textarea(
                attrs={
                    'class':'form-control form-control-sm'
                }
            ),

            'tanggalPenyusunan':forms.DateInput(
                attrs={
                    'class':'form-control form-control-sm',
                    'type':'date'
                }
            ),
            'capaianPembelajaranProdi':forms.Textarea(
                attrs={
                    'class':'form-control form-control-sm'
                }
            ),
            'materiPembelajaran':forms.Textarea(
                attrs={
                    'class':'form-control form-control-sm'
                }
            ),
            'mediaBelajar':forms.Textarea(
                attrs={
                    'class':'form-control form-control-sm'
                }
            ),
            'teamTeaching':forms.Textarea(
                attrs={
                    'class':'form-control form-control-sm'
                }
            ),
            # 'teamTeaching':TinyMCE(
            #     attrs={
            #         'class':'form-control',
            #         'cols': 80, 
            #         'rows':20,
            #     }
            # ),
            # 'idref':forms.Select(
            #     attrs={
            #         'class':'form-control form-control-sm'
            #     }
            # )
        }

class referensiForm(forms.ModelForm):
    
    class Meta:
        model = referensi
        fields = [
            'refRps',
            'refPustaka',
            'jenis',
            
        ]
        labels={
            'refRps':'Matakuliah',
            'refPustaka':'Pustaka',
            'jenis':'Jenis Referensi',
        }
        widgets={
            'refRps':forms.Select(
                attrs={
                    'class':'form-control form-control-sm'
                }
            ),
            'refPustaka':forms.Select(
                attrs={
                    'class':'form-control form-control-sm'
                }
            ),

            'jenis':forms.TextInput(
                attrs={
                    'class':'form-control form-control-sm',
                    'placeholder':'JeniS : Buku, Jurnal dll'
                }
            ),
        }

# rpsFormSet = inlineformset_factory(rps,referensi)