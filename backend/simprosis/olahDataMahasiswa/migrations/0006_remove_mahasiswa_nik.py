# Generated by Django 2.2 on 2020-03-26 07:08

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('olahDataMahasiswa', '0005_auto_20200326_1406'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='mahasiswa',
            name='nik',
        ),
    ]