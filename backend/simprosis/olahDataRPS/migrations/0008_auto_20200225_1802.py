# Generated by Django 2.2 on 2020-02-25 11:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('olahDataRPS', '0007_auto_20200220_1739'),
    ]

    operations = [
        migrations.AlterField(
            model_name='rps',
            name='prasyarat',
            field=models.TextField(choices=[('SIM3707', 'Data Mining'), ('SIM3201', 'Logika dan Algoritma'), ('cobakode', 'cobaen')]),
        ),
    ]
