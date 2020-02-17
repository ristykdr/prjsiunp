from django.db import models
from rps.models import userProfiles

# Create your models here.
class mahasiswa(models.Model):
    nik = models.ForeignKey(userProfiles, on_delete=models.CASCADE)
    npm = models.CharField(max_length=20)
    tahunMasuk = models.IntegerField()
    kelas = models.CharField(max_length=2)

    class Meta:
        verbose_name = "mahasiswa"
        verbose_name_plural = "mahasiswa"

    def __str__(self):
        return "{} - {}".format(self.npm, userProfiles.nama)

    # def get_absolute_url(self):
    #     return reverse("mahasiswa_detail", kwargs={"pk": self.pk})
