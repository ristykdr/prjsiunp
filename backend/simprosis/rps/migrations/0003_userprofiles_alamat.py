# Generated by Django 2.2 on 2020-02-17 15:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('rps', '0002_auto_20200217_0954'),
    ]

    operations = [
        migrations.AddField(
            model_name='userprofiles',
            name='alamat',
            field=models.TextField(default=''),
        ),
    ]