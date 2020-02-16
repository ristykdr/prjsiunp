from django.db import models

# Create your models here.
class matakuliah(models.Model):
    kode = models.CharField(max_length=10)
    nama = models.CharField(max_length=30)
    sks = models.IntegerField()
    semester = models.IntegerField()

    class Meta:
        verbose_name = "matakuliah"
        verbose_name_plural = "matakuliah"

    def __str__(self):
        return self.nama
    

        
