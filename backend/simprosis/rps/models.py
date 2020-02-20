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
    namaUser = models.OneToOneField(User, on_delete=models.CASCADE)
    noKTP = models.IntegerField(null=True,blank=True)
    nama = models.CharField(max_length=50, null=True,blank=True)
    alamat = models.TextField(default='',null=True,blank=True)
    tanggalLahir = models.DateField(auto_now=False, auto_now_add=False,null=True,blank=True)
    jenisKelamin = models.CharField(max_length=10, choices=list_kelamin,null=True,blank=True)
    agama = models.CharField(max_length=50,choices=list_agama,null=True,blank=True)

    def __str__(self):
        return "{} - {}".format(self.namaUser, self.nama)

# @receiver(post_save, sender=User)
# def create_user_profile(sender, instance,created, **kwargs):
#     if created:
#         userProfiles.objects.create(namaUser=instance)

# @receiver(post_save, sender=User)
# def save_user_profile(sender, instance, **kwargs):
#     instance.userProfiles.save()
