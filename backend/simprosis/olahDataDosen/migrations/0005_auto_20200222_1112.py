# Generated by Django 2.2 on 2020-02-22 04:12

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('olahDataDosen', '0004_auto_20200221_1614'),
    ]

    operations = [
        migrations.AlterField(
            model_name='dosen',
            name='nik',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='rps.userProfiles', unique=True),
        ),
    ]