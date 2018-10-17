from django.contrib import admin
from .models import Pesquisador, historicoGecal,LinhaDePesquisa, Bolsista, Formulario_denuncia, Fotos_e_Destaques
# Register your models here.

admin.site.register(LinhaDePesquisa)
admin.site.register(Pesquisador)
admin.site.register(historicoGecal)
admin.site.register(Bolsista)
admin.site.register(Formulario_denuncia)
admin.site.register(Fotos_e_Destaques)