# Generated by Django 2.2 on 2020-03-11 08:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('olahDataJurnalKuliah', '0002_auto_20200311_1506'),
    ]

    operations = [
        migrations.AddField(
            model_name='jurnalkuliah',
            name='pjmk',
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
        migrations.AddField(
            model_name='jurnalkuliah',
            name='ruang',
            field=models.CharField(blank=True, max_length=5, null=True),
        ),
        migrations.AddField(
            model_name='jurnalkuliah',
            name='semester',
            field=models.IntegerField(choices=[(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8)], default=0),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='jurnalkuliah',
            name='tahunAjaran',
            field=models.CharField(choices=[('2019/2020', '2019/2020'), ('2020/2021', '2020/2021'), ('2021/2022', '2021/2022')], max_length=10),
        ),
    ]
