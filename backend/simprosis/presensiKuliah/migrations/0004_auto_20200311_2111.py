# Generated by Django 2.2 on 2020-03-11 14:11

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('presensiKuliah', '0003_auto_20200311_2108'),
    ]

    operations = [
        migrations.RenameField(
            model_name='presensi',
            old_name='jurnalPerkuliahan',
            new_name='jurnal',
        ),
    ]
