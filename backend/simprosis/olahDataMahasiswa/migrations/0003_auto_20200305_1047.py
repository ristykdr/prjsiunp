# Generated by Django 2.2 on 2020-03-05 03:47

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('olahDataMahasiswa', '0002_auto_20200301_2115'),
    ]

    operations = [
        migrations.AlterField(
            model_name='mahasiswa',
            name='nik',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='rps.userProfiles'),
        ),
    ]