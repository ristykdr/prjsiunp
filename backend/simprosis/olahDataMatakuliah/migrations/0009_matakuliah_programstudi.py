# Generated by Django 2.2 on 2020-03-01 04:54

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('rps', '0008_userprofiles_programstudi'),
        ('olahDataMatakuliah', '0008_auto_20200227_1556'),
    ]

    operations = [
        migrations.AddField(
            model_name='matakuliah',
            name='programStudi',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='rps.prodi'),
        ),
    ]