# Generated by Django 2.2 on 2020-03-26 07:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('olahDataMahasiswa', '0004_auto_20200325_1254'),
    ]

    operations = [
        migrations.AddField(
            model_name='mahasiswa',
            name='agama',
            field=models.CharField(blank=True, choices=[('islam', 'Islam'), ('katolik', 'Katolik'), ('kristen', 'Kristen'), ('hindu', 'Hindu'), ('budha', 'Budha'), ('konghucu', 'Konghucu')], max_length=50, null=True),
        ),
        migrations.AddField(
            model_name='mahasiswa',
            name='alamat',
            field=models.TextField(blank=True, default='', null=True),
        ),
        migrations.AddField(
            model_name='mahasiswa',
            name='jenisKelamin',
            field=models.CharField(blank=True, choices=[('Laki', 'Laki - Laki'), ('perempuan', 'Perempuan')], max_length=10, null=True),
        ),
        migrations.AddField(
            model_name='mahasiswa',
            name='nama',
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
        migrations.AddField(
            model_name='mahasiswa',
            name='noKTP',
            field=models.IntegerField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='mahasiswa',
            name='tanggalLahir',
            field=models.DateField(blank=True, null=True),
        ),
    ]