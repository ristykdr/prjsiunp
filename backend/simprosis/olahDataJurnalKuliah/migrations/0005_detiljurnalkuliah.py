# Generated by Django 2.2 on 2020-03-11 13:33

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('olahDataJurnalKuliah', '0004_auto_20200311_1618'),
    ]

    operations = [
        migrations.CreateModel(
            name='detilJurnalKuliah',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('pertemuan', models.IntegerField(max_length=2)),
                ('tanggal', models.DateField()),
                ('jamMulai', models.TimeField()),
                ('jamSelesai', models.TimeField()),
                ('materi', models.TextField()),
                ('metode', models.CharField(max_length=100)),
                ('jurnal', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='olahDataJurnalKuliah.jurnalKuliah')),
            ],
            options={
                'verbose_name': 'detilJurnalKuliah',
                'verbose_name_plural': 'detilJurnalKuliahs',
            },
        ),
    ]