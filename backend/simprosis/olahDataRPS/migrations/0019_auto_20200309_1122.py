# Generated by Django 2.2 on 2020-03-09 04:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('olahDataRPS', '0018_pustaka'),
    ]

    operations = [
        migrations.AlterField(
            model_name='rps',
            name='idref',
            field=models.CharField(default=1, max_length=50),
            preserve_default=False,
        ),
    ]