from django import forms
from .models import rps, referensi

class rpsForm(forms.ModelForm):
    
    class Meta:
        model = rps
        fields = [
            'kodemk',
            'dosenPengampu',
            'capaianPembelajaran',
            'prasyarat',
            'pathLokasi',
            'deskripsi'
        ]
        labels = {
            'kodemk':'Matakuliah',
            'dosenPengampu':'Dosen Pengampu',
            'capaianPembelajaran':'Capaian Pembelajaran',
            'prasyarat':'Matakuliah Prasyarat',
            'pathLokasi':'File',
            'deskripsi':'Deskripsi',
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
            )
        }

class referensiForm(forms.ModelForm):
    
    class Meta:
        model = referensi
        fields = [
            'jenis',
            'tipe',
            'judul',
            'author',
            'tahun',
            'kota',
            'penerbit'
        ]
        labels={
            'jenis':'Jenis Referensi',
            'tipe':'Tipe Referensi (Jurnal, Buku, dll..)',
            'judul':'Judul',
            'author':'Pengarang / Penulis',
            'tahun':'Tahun Terbit',
            'kota':'Kota Terbit',
            'penerbit':'Penerbit'
        }
        widgets={
            'jenis':forms.Select(
                attrs={
                    'class':'form-control form-control-sm'
                }
            ),
            'tipe':forms.TextInput(
                attrs={
                    'class':'form-control form-control-sm',
                    'placeholder':'Tipe referensi'
                }
            ),
            'judul':forms.TextInput(
                attrs={
                    'class':'form-control form-control-sm',
                    'placeholder':'Judul referensi'
                }
            ),
            'author':forms.TextInput(
                attrs={
                    'class':'form-control form-control-sm',
                    'placeholder':'Pengarang / Penulisi'
                }
            ),
            'tahun':forms.NumberInput(
                attrs={
                    'class':'form-control form-control-sm',
                    'placeholder':'Tahun terbit'
                }
            ),
            'kota':forms.TextInput(
                attrs={
                    'class':'form-control form-control-sm',
                    'placeholder':'Kota Terbit'
                }
            ),
            'penerbit':forms.TextInput(
                attrs={
                    'class':'form-control form-control-sm',
                    'placeholder':'Penerbit'
                }
            )
        }

