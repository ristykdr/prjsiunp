# Generated by Django 2.2 on 2020-03-17 15:52

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('olahDataRPS', '0029_auto_20200317_2251'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='referensi',
            name='refPustaka',
        ),
    ]
