# Generated by Django 2.1.1 on 2018-10-01 15:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('paginasGecal', '0006_auto_20180930_1540'),
    ]

    operations = [
        migrations.AddField(
            model_name='formulario_denuncia',
            name='estupro',
            field=models.BooleanField(default=False),
        ),
    ]
