from django.db import models
from olahDataDosen.models import dosen
from olahDataMatakuliah.models import matakuliah
# Create your models here.

class rps(models.Model):
    list_matkul=matakuliah.objects.values_list('kode','nama')
    kodemk = models.ForeignKey(matakuliah, on_delete=models.CASCADE)
    dosenPengampu = models.ForeignKey(dosen, on_delete=models.CASCADE)
    capaianPembelajaran = models.TextField()
    prasyarat = models.TextField(choices=list_matkul,blank=True)
    pathLokasi = models.TextField(blank=True)
    deskripsi = models.TextField()

    class Meta:
        verbose_name = "rps"
        verbose_name_plural = "rps"
        ordering =['-id']

    def __str__(self):
        return " {} ".format(self.kodemk)

    # def get_absolute_url(self):
    #     return reverse("rps_detail", kwargs={"pk": self.pk})


class referensi(models.Model):
    list_jenis=(
        ('utama','Utama'),
        ('pendukung','Pendukung')
    )
    jenis =models.CharField(max_length=15, choices=list_jenis)
    tipe = models.CharField(max_length=30)
    judul = models.CharField(max_length=100)
    author = models.CharField(max_length=100)
    tahun = models.SmallIntegerField()
    kota = models.CharField(max_length=50)
    penerbit = models.CharField(max_length=100)
    class Meta:
        verbose_name = 'referensi'
        verbose_name_plural = 'referensi'

    def __str__(self):
        return " {} - {}".format(self.id, self.judul)


class detilRPS(models.Model):
    idRps = models.ForeignKey(rps, on_delete=models.CASCADE)
    pertemuan = models.SmallIntegerField
    kemampuan = models.CharField(max_length=100)
    indikator = models.CharField(max_length=100)
    materi = models.CharField(max_length=100)
    bentukBelajar = models.CharField(max_length=100)
    jenisPenilaian = models.CharField(max_length=50)
    kriteriaPenilaian = models.CharField(max_length=100)
    bobot=models.SmallIntegerField()
    idref = models.ForeignKey(referensi, on_delete=models.CASCADE)
    class Meta:
        verbose_name = 'detilRPS'
        verbose_name_plural = 'detilRPS'

    def __str__(self):
        return " {} - {}".format(self.pertemuan, self.materi)
