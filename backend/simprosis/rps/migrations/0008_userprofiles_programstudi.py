# Generated by Django 2.2 on 2020-03-01 04:54

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('rps', '0007_fakultas_prodi'),
    ]

    operations = [
        migrations.AddField(
            model_name='userprofiles',
            name='programStudi',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='rps.prodi'),
        ),
    ]