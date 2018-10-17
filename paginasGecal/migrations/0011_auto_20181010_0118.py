# Generated by Django 2.1.1 on 2018-10-10 04:18

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('paginasGecal', '0010_fotos_e_destaques'),
    ]

    operations = [
        migrations.AddField(
            model_name='fotos_e_destaques',
            name='data_publicacao',
            field=models.DateTimeField(blank=True, default=datetime.datetime.today, help_text='quando a imagem foi criada'),
        ),
        migrations.AlterField(
            model_name='fotos_e_destaques',
            name='foto',
            field=models.ImageField(upload_to='galeria/'),
        ),
    ]
