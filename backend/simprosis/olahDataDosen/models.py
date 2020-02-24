from django.db import models
from rps.models import userProfiles
from django.core.exceptions import ValidationError
from django.utils.translation import gettext_lazy as _

# def validasi_nik(value):
#     input_nik=value
#     status='kosong'
#     if dosen.objects.filter(nik_id=1).exists()==True:
#         status='ada'
#     else:
#         status='kosong'
#     print (status)
#     if status=='ada':
#         pesanError = 'Dosen '+str(input_nik)+' sudah ada, silahkan pilih yang lain'
#         raise ValidationError (pesanError,code='invalid')

# Create your models here.
class dosen(models.Model):
    list_jabatan = (
        ('Tenaga Pengajar','Tenaga Pengajar'),
        ('Asisten Ahli','Asisten Ahli'),
        ('Lektor','Lektor'),
        ('Lektor Kepala','Lektor Kepala'),
        ('Guru Besar','Guru Besar')
    )
    list_golongan=(
        ('3a','III/a'),
        ('3b','III/b'),
        ('3c','III/c'),
        ('3d','III/d'),
        ('4a','IV/a'),
        ('4b','IV/b'),
        ('4c','IV/c'),
        ('4d','IV/d'),
        ('4e','IV/e'),
    )
    nik = models.ForeignKey(
            userProfiles, 
            on_delete=models.CASCADE,
            unique=True,
            # validators = [validasi_nik]
        )
    nidn = models.CharField( max_length=10)
    jabatan = models.CharField(max_length=50, choices=list_jabatan)
    golongan = models.CharField(max_length=5,choices=list_golongan)

    

    class Meta:
        verbose_name = "dosen"
        verbose_name_plural ="dosen"

    # def clean(self):
    #     if dosen.objects.filter(nik=self.nik).exists():
    #         raise ValidationError(_('harus uni'))
    # def validate_unique(self,*args, **kwargs):
    #     super(dosen, self).validate_unique(*args, **kwargs)
    #     # qs=dosen.objects.filter(nik=self.nik)
    #     if dosen.objects.filter(nik=self.nik).exists():

    #         raise ValidationError(
    #         {
    #             'nik':['harus unik']
    #         }
    #     )
        


    def __str__(self):
        return "{} - {}".format(self.nidn, self.nik.nama)

    # def get_absolute_url(self):
    #     return reverse("dosen_detail", kwargs={"pk": self.pk})

    