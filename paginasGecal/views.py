import re
from django.shortcuts import render, HttpResponse
from django.views import generic
from .models import historicoGecal, LinhaDePesquisa, Pesquisador, Bolsista, Formulario_denuncia, Fotos_e_Destaques
from django.contrib.auth.forms import UserCreationForm
from .forms import DenunciaForm
# Create your views here.

def index(request):

    if request.method == 'POST':
        gravar_denuncia(request)

    # print('request.GET __ index view')
    # print(request.GET)
    #
    # print('request.Post __ index view')
    # print(request.POST)

    historico = historicoGecal.objects.all().first()
    jumbot = historico.textoJumbotron
    txt_hist = historico.textoHistorico

    pesquisas_andamento = LinhaDePesquisa.objects.all().filter(estagio_do_projeto__exact='a',tipo_de_projeto__exact='p')
    pesquisas_concluidas = LinhaDePesquisa.objects.all().filter(estagio_do_projeto__exact='c',tipo_de_projeto__exact='p')

    projetos_ext_andamento = LinhaDePesquisa.objects.all().filter(tipo_de_projeto__exact='e',estagio_do_projeto__exact='a')
    projetos_ext_concluido = LinhaDePesquisa.objects.all().filter(tipo_de_projeto__exact='e',estagio_do_projeto__exact='c')

    # print("imprimindo projetos de extensão em andamento:")
    # print(projetos_ext_andamento)
    #
    # print("imprimindo projetos de extensão concluídos:")
    # print(projetos_ext_concluido)



    pesquisadores = Pesquisador.objects.all()
    bolsistas = Bolsista.objects.all()

    fotos_e_legendas = Fotos_e_Destaques.objects.all()

    # for  foto in fotos_e_legendas:
    #     print(foto.foto.url)

    contexto  = {'historico':txt_hist,
                 'jumbotron': jumbot,
                 'pesquisas_andamento':pesquisas_andamento,
                 'pesquisas_concluidas':pesquisas_concluidas,
                 'pesquisadores': pesquisadores,
                 'bolsistas':bolsistas,
                 'projeto_de_extensao_andamento':projetos_ext_andamento,
                 'projeto_de_extensao_concluido':projetos_ext_concluido,
                 'fotos_legendas':fotos_e_legendas
    }

    return render(request, 'index.html', context=contexto)

    # return render(request, 'index.html', {'historico':txt_hist, 'jumbotron': jumbot,
    #     'pesquisas_andamento':pesquisas_andamento, 'pesquisas_concluidas':pesquisas_concluidas,
    #     'pesquisadores': pesquisadores, 'bolsistas':bolsistas, 'extensao_andamento':projetos_ext_andamento,
    #     'extensao_concluido':projetos_ext_concluido},)


def formulario_denuncia(request):
    print('entrou no formulário denuncia view')

    if request.method == 'POST':
        form_denuncia = DenunciaForm(request.POST)
        if form_denuncia.is_valid():
            form_denuncia.save()
            form_denuncia = DenunciaForm()
        else:
            print(form_denuncia.errors)
        # print('entrou no formulário denuncia view -- save method')
        # if formulario.is_valid():

        print('entrou no formulário denuncia view -- terminou save ')
    else:
    # print(request.GET)
        form_denuncia = DenunciaForm();

    contexto = {
        'formulario': form_denuncia,
        'registro_denuncia': Formulario_denuncia,
    }

    return render(request, 'paginasGecal/form_denuncia.html', contexto)


ENUM_TODAS_AS_CHAVES = ['radio', 'check_vf', 'check_vps', 'check_as', 'check_es',
'check_am', 'check_vpa', 'check_ho', 'check_le', 'check_tr', 'check_av', 'check_ou',
'text_outros', 'nome_denunciante', 'email_denunciante', 'tel_denunciante', 'txt_relato']

MAP_DICT_TIPO_DE_VIOLENCIA = {
'nome_denunciante':'nome_denunciante',
'email_denunciante':'email_denunciante',
'tel_denunciante':'telefone_denunciante',
'radio':'tipo_de_experiencia',
'check_vf': 'violencia_fisica', 'check_vps': 'violencia_psicologica','check_as': 'assedio_sexual',
'check_es': 'estupro', 'check_am': 'assedio_moral', 'check_vpa': 'violencia_patrimonial', 'check_ho': 'homofobia',
'check_le': 'lesbofobia', 'check_tr':'transfobia', 'check_av':'ameaca_verbal', 'check_ou': 'outros',
'text_outros':'txt_outros',
'txt_relato':'txt_relato'
}

BOOLEAN_DICT_TIPO_DE_VIOLENCIA = {
    'check_vf': True, 'check_vps': True,'check_as': True,
    'check_es': True, 'check_am': True, 'check_vpa': True, 'check_ho': True,
    'check_le': True, 'check_tr': True, 'check_av': True, 'check_ou': True,
}

def gravar_denuncia(request):
    denuncia = Formulario_denuncia()
    setattr(denuncia, 'tipo_de_experiencia',request.POST['radio'])
    chaves_post = request.POST.keys()
    # for i in range(len(chaves_post)):
    #     print("imprimindo chaves: " + chaves_post[i])

    for chave in chaves_post:
        print("imprimindo v2 chaves> " + chave)
        print("imprimindo valores do request.POST['chave']")
        print("valor da chave: " + chave + " no request.POST : "+ request.POST[chave])
        if (chave != 'csrfmiddlewaretoken'):
            search = re.search("check", chave)
            print('search')
            print(search)
            if (search != None):
                setattr(denuncia, MAP_DICT_TIPO_DE_VIOLENCIA[chave], BOOLEAN_DICT_TIPO_DE_VIOLENCIA[chave])
            else:
                setattr(denuncia, MAP_DICT_TIPO_DE_VIOLENCIA[chave], request.POST[chave])

    print('chaves_post')
    print(chaves_post)
    # print('chaves_post.length')
    # print(len(chaves_post))
    denuncia.save()

def galeria_e_destaques(request):
    return render(request, 'galeria_e_destaques.html')


def form2difer(request):
    return render(request, 'formulario_denuncia.html')

def proj3Andamento(request):
    return render(request, 'paginasGecal/proj3Conteudo.html')