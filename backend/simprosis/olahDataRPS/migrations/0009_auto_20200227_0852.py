# Generated by Django 2.2 on 2020-02-27 01:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('olahDataRPS', '0008_auto_20200225_1802'),
    ]

    operations = [
        migrations.AlterField(
            model_name='rps',
            name='prasyarat',
            field=models.TextField(choices=[('SIM3707', 'Data Mining'), ('SIM3201', 'Logika dan Algoritma'), ('cobakode', 'cobaen'), ('SIM3702', 'matkul cobaas'), ('SIM3703', 'asd')]),
        ),
    ]