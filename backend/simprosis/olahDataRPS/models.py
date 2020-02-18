from django.db import models
from olahDataDosen.models import dosen
from olahDataMatakuliah.models import matakuliah
# Create your models here.

class rps(models.Model):
    list_matkul=matakuliah.objects.values_list('kode','nama')
    kodemk = models.ForeignKey(matakuliah, on_delete=models.CASCADE)
    dosenPengampu = models.ForeignKey(dosen, on_delete=models.CASCADE)
    capaianPembelajaran = models.TextField()
    prasyarat = models.TextField(choices=list_matkul)
    pathLokasi = models.TextField()
    deskripsi = models.TextField()

    class Meta:
        verbose_name = "rps"
        verbose_name_plural = "rps"

    def __str__(self):
        return " {} - {}".format(self.kodemk, matakuliah.nama)

    # def get_absolute_url(self):
    #     return reverse("rps_detail", kwargs={"pk": self.pk})
