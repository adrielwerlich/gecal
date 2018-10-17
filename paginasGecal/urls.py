from django.urls import path, include
from . import views 
from django.contrib import admin
from django.conf import settings
from django.conf.urls.static import static

app_name = 'paginasGecal'

urlpatterns = [
    path('', views.index, name='index'),
    path('relato_violencia/', views.formulario_denuncia, name='chama_form_denuncia'),
    path('galeria_fotos_destaques/', views.galeria_e_destaques, name='galeria_de_fotos'),
#    path('formulario_denuncia/', views.Denunciar.as_view(), name='formulario_denuncia'),
#     path('qualquerUrl/', views.form2difer, name='qualquerNome'),
    # path('proj3Conteudo/', views.proj3Andamento, name='proj3Conteudo'),
    # path('app_teste/', include('app_teste.urls')),
    # path('denunciar/', include('denunciar.urls')),
    path('admin/', admin.site.urls),
]#+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)