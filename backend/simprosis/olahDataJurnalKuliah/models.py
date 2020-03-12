from django.db import models
from olahDataMatakuliah.models import matakuliah
from olahDataDosen.models import dosen
from datetime import datetime

# Create your models here.
class jurnalKuliah(models.Model):
    # TODO: Define fields here
    listTahunAjaran = []
    for thn in range ((datetime.now().year-1),(datetime.now().year+2)):
        thAjaran = str(thn) + '/' + str(thn+1)
        listTahunAjaran.append((thAjaran,thAjaran))
        # r+'/'+(r+1)
    mk = models.ForeignKey(matakuliah, on_delete=models.CASCADE)
    tahunAjaran = models.CharField(choices=listTahunAjaran, max_length=10)
    listSemester =(
        ('Gasal','Gasal'),
        ('Genap','Genap')
    ) 
    semester = models.CharField(choices=listSemester, max_length=5)
    dosenPengajar = models.ForeignKey(dosen, on_delete=models.CASCADE)
    ruang = models.CharField(max_length=5, blank=True, null= True)
    pjmk = models.CharField(max_length=50, blank=True, null= True)

    class Meta:
        """Meta definition for jurnalKuliah."""

        verbose_name = 'jurnalKuliah'
        verbose_name_plural = 'jurnalKuliah'
        ordering = ['-id']

    def __str__(self):
        """Unicode representation of jurnalKuliah."""
        return "{}-{}".format(self.tahunAjaran, self.mk)

class detilJurnalKuliah(models.Model):
    """Model definition for detilJurnalKuliah."""
    jurnal = models.ForeignKey(jurnalKuliah, on_delete=models.CASCADE)
    pertemuan = models.SmallIntegerField()
    tanggal = models.DateField(auto_now=False, auto_now_add=False)
    jamMulai = models.TimeField(auto_now=False, auto_now_add=False)
    jamSelesai = models.TimeField(auto_now=False, auto_now_add=False)
    materi = models.TextField()
    metode = models.CharField(max_length=100)

    class Meta:
        """Meta definition for detilJurnalKuliah."""

        verbose_name = 'detilJurnalKuliah'
        verbose_name_plural = 'detilJurnalKuliah'

    def __str__(self):
        return "{} {}".format(self.jurnal, self.pertemuan)
