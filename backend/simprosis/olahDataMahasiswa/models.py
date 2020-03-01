from django.db import models
from rps.models import userProfiles
from datetime import datetime
# Create your models here.
class mahasiswa(models.Model):
    listTahunMasuk = []
    for r in range((datetime.now().year-7),(datetime.now().year+1)):
        listTahunMasuk.append((r,r))
    nik = models.ForeignKey(userProfiles, on_delete=models.CASCADE, unique=True)
    npm = models.CharField(max_length=20,unique=True)
    tahunMasuk = models.IntegerField(choices=listTahunMasuk)
    kelas = models.CharField(max_length=2)

    class Meta:
        verbose_name = "mahasiswa"
        verbose_name_plural = "mahasiswa"

    def __str__(self):
        return "{} - {}".format(self.npm, self.nik.nama)

    # def get_absolute_url(self):
    #     return reverse("mahasiswa_detail", kwargs={"pk": self.pk})
