from django.db import models
from olahDataDosen.models import dosen
from olahDataMatakuliah.models import matakuliah
# Create your models here.
class rps(models.Model):
    list_dosenPengampu = (
        ('1','as'),
        ('2','as2'),
    )
    kode = models.ForeignKey(matakuliah, on_delete=models.CASCADE)
    koordinator = models.ForeignKey(dosen, on_delete=models.CASCADE)
    dosenPengampu = models.CharField(max_length=50,choices=list_dosenPengampu)
    capaianPembelajaran = models.TextField()
    prasyarat = models.ForeignKey(matakuliah, on_delete=models.CASCADE)
    pathLokasi = models.TextField()
    keterangan = models.TextField()
    

    class Meta:
        verbose_name = "rps"
        verbose_name_plural = "rps"

    def __str__(self):
        return "{}. {} - {}".format(self.id, self.kode, self.koordinator)

    # def get_absolute_url(self):
    #     return reverse("rps_detail", kwargs={"pk": self.pk})
