# Generated by Django 2.1.1 on 2018-09-21 04:42

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('paginasGecal', '0002_auto_20180921_0125'),
    ]

    operations = [
        migrations.RenameField(
            model_name='linhadepesquisa',
            old_name='concluido',
            new_name='estagio_da_pesquisa',
        ),
    ]