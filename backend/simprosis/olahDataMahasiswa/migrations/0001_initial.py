# Generated by Django 2.2 on 2020-02-17 03:33

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('rps', '0002_auto_20200217_0954'),
    ]

    operations = [
        migrations.CreateModel(
            name='mahasiswa',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('npm', models.CharField(max_length=20)),
                ('tahunMasuk', models.IntegerField()),
                ('kelas', models.CharField(max_length=2)),
                ('nik', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='rps.userProfiles')),
            ],
            options={
                'verbose_name': 'mahasiswa',
                'verbose_name_plural': 'mahasiswa',
            },
        ),
    ]
