# Generated by Django 2.2 on 2020-02-27 08:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('olahDataRPS', '0009_auto_20200227_0852'),
    ]

    operations = [
        migrations.AlterField(
            model_name='rps',
            name='pathLokasi',
            field=models.TextField(blank=True),
        ),
        migrations.AlterField(
            model_name='rps',
            name='prasyarat',
            field=models.TextField(blank=True, choices=[('SIM3702', 'Matakuliah Percobaan 2'), ('SIM3201', 'Logika dan Algoritma'), ('SIM3707', 'Data Mining')]),
        ),
    ]
