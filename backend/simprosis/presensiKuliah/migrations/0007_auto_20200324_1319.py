# Generated by Django 2.2 on 2020-03-24 06:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('presensiKuliah', '0006_auto_20200311_2124'),
    ]

    operations = [
        migrations.AlterField(
            model_name='presensi',
            name='presensi',
            field=models.BooleanField(default=False),
        ),
    ]
