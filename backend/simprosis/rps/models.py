from django.db import models
from django.contrib.auth.models import User
from django.db.models.signals import post_save
from django.dispatch import receiver

# Create your models here.
class userProfiles(models.Model):
    list_agama = (
        ('islam','Islam'),
        ('katolik','Katolik'),
        ('kristen','Kristen'),
        ('hindu','Hindu'),
        ('budha','Budha'),
        ('konghucu','Konghucu')
    )
    list_kelamin = (
        ('Laki','Laki - Laki'),
        ('perempuan','Perempuan')
    )
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    noKTP = models.IntegerField()
    nama = models.CharField(max_length=50)
    alamat = models.TextField(default='')
    tanggalLahir = models.DateField(auto_now=False, auto_now_add=False)
    jenisKelamin = models.CharField(max_length=10, choices=list_kelamin)
    agama = models.CharField(max_length=50,choices=list_agama)

    def __str__(self):
        return "{} - {}".format(self.user, self.nama)

@receiver(post_save, sender=User)
def create_user_profile(sender, instance,created, **kwargs):
    if created:
        userProfiles.object.create(user=instance)

@receiver(post_save, sender=User)
def save_user_profile(sender, instance, **kwargs):
    instance.profile.save()

# class penggunaAdmin(models.Model):
#     nik = models.ForeignKey(userProfiles, on_delete=models.CASCADE)
#     tanggalRegistrasi = models.DateTimeField(auto_now_add=True)
#     keterangan = models.CharField(max_length=100)
    
#     class Meta:
#         verbose_name = "penggunaAdmin"
#         verbose_name_plural = "penggunaAdmin"

#     def __str__(self):
#         return self.nik
