# Generated by Django 2.1.1 on 2018-09-20 20:45

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Bolsista',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nome', models.CharField(max_length=200)),
            ],
        ),
        migrations.CreateModel(
            name='historicoGecal',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('textoJumbotron', models.TextField()),
                ('textoHistorico', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='LinhaDePesquisa',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('titulo', models.CharField(max_length=800)),
                ('ementa', models.TextField(blank=True, default='conteúdo vazio')),
                ('concluido', models.CharField(blank=True, choices=[('c', 'concluído'), ('a', 'em andamento')], default='a', help_text='Concluído ou em andamento', max_length=1)),
                ('data_inicio', models.DateField(blank=True, default=datetime.date.today, help_text='inicio do projeto')),
                ('data', models.DateField(blank=True, default=datetime.date.today, help_text='data de conclusão ou previsão de conclusão')),
            ],
        ),
        migrations.CreateModel(
            name='Pesquisador',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nome', models.CharField(max_length=200)),
                ('cpf', models.CharField(max_length=14, unique=True)),
                ('dtNascimento', models.DateField(blank=True, default=datetime.date.today)),
                ('email', models.EmailField(blank=True, default='', max_length=70, unique=True)),
                ('universidade', models.CharField(max_length=30)),
            ],
        ),
        migrations.AddField(
            model_name='linhadepesquisa',
            name='lider',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='paginasGecal.Pesquisador'),
        ),
        migrations.AddField(
            model_name='bolsista',
            name='pesquisa',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='paginasGecal.LinhaDePesquisa'),
        ),
    ]
