from django.db import models

# Create your models here.
class matakuliah(models.Model):
    list_semester=(
        (1,'Satu'),
        (2,'Dua'),
        (3,'Tiga'),
        (4,'Empat'),
        (5,'Lima'),
        (6,'Enam'),
        (7,'Tujuh'),
        (8,'Delapan')
    )
    kode = models.CharField(max_length=10,unique=True)
    nama = models.CharField(max_length=30)
    sks = models.IntegerField()
    semester = models.IntegerField(choices=list_semester)
    jmlPertemuan = models.SmallIntegerField(default=0)

    class Meta:
        verbose_name = "matakuliah"
        verbose_name_plural = "matakuliah"

    def __str__(self):
        return "{} - {}".format(self.kode,self.nama) 
    

        
