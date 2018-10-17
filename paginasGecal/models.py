import os

from django.db.models.signals import post_save
from django.dispatch import receiver
from django.db import models
from datetime import datetime
from PIL import Image, ExifTags
#from utilities.utils import get_filename

import uuid
#from django.core.validators import email_re
from django.core.exceptions import ValidationError

# Create your models here.

# rotaciona foto, caso ela esteja sendo apresentada invertida
def rotate_image(filepath):
  try:
    image = Image.open(filepath)
    for orientation in ExifTags.TAGS.keys():
      if ExifTags.TAGS[orientation] == 'Orientation':
            break
    exif = dict(image._getexif().items())

    if exif[orientation] == 3:
        image = image.rotate(180, expand=True)
    elif exif[orientation] == 6:
        image = image.rotate(270, expand=True)
    elif exif[orientation] == 8:
        image = image.rotate(90, expand=True)
    image.save(filepath)
    image.close()
  except (AttributeError, KeyError, IndexError):
    # cases: image don't have getexif
    pass


class Pesquisador(models.Model):

    nome = models.CharField(max_length=200)

    #cpf = models.CharField(max_length=14, unique=True, blank=True, null=True, default=None)
    dtNascimento = models.DateField(blank=True, default=datetime.today)
    email = models.EmailField(max_length=70, blank=True, default="")
    universidade = models.CharField(max_length=30, blank=True)

    def __str__(self):
        return self.nome

class Fotos_e_Destaques(models.Model):
    foto = models.ImageField(upload_to='galeria/')
    comentarios = models.CharField(max_length=700)
    data_publicacao = models.DateTimeField(help_text='quando a imagem foi criada', blank=True, default=datetime.today)

    def data_publicacao_formatada(self):
        return self.data_publicacao.strftime('%b %e %Y')

# faz a rotação das imagens para não ficarem invertidas no browser
@receiver(post_save, sender=Fotos_e_Destaques, dispatch_uid="update_image_profile")
def update_image(sender, instance, **kwargs):
  if instance.foto:
    BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    fullpath = BASE_DIR + '/paginasGecal/static/' + instance.foto.url
    rotate_image(fullpath)


class LinhaDePesquisa(models.Model):

    titulo = models.CharField(max_length=800)
    ementa = models.TextField(blank=True, default="conteúdo vazio")
    lider = models.ForeignKey(Pesquisador, null=True, on_delete=models.SET_NULL, blank=True)
    #pesquisadores = models.ManyToManyField(Pesquisador,null=True)
    #concluido = models.ForeignKey(EstagioDaPesquisa, on_delete=models.SET_NULL, null=True)
    comentarios_adicionais = models.TextField(blank=True, null=True, default="")

    ENUM_ESTAGIO = (('c', 'concluído'), ('a', 'em andamento'))
    estagio_do_projeto = models.CharField(max_length=1, choices=ENUM_ESTAGIO, default='a', blank=True,
                                           help_text='Concluído ou em andamento')
    ENUM_TIPO_DE_PROJETO = (('p', 'pesquisa'), ('e', 'extensao'))
    tipo_de_projeto = models.CharField(max_length=1, choices=ENUM_TIPO_DE_PROJETO, default='p', help_text='definir tipo de projeto > pesquisa / extensão')
    data_inicio = models.DateField(help_text='inicio do projeto', blank=True, default=datetime.today)
    data_conclusao = models.DateField(help_text='data de conclusão ou previsão de conclusão', blank=True, default=datetime.today)

    def __str__(self):
        return self.titulo

class Formulario_denuncia(models.Model):
    """blank=True determines whether the field will be required in forms. This includes the admin and your own custom forms. If blank=True then the field will not be required, whereas if it's False the field cannot be blank."""
    nome_denunciante = models.TextField(blank=True)
    email_denunciante = models.EmailField(blank=True)
    telefone_denunciante = models.TextField(blank=True)

    ENUM_TIPO_EXPERIENCIA = (('v','vivenciou'),('p','presenciou'))
    tipo_de_experiencia = models.CharField(max_length=1, choices=ENUM_TIPO_EXPERIENCIA,
                   default='v', help_text="Foi testemunha ou vítima?")
    ENUM_TIPO_DE_VIOLENCIA = (('vf', 'violência física'), ('vps', 'violência psicológica'),
                              ('as', 'assédio sexual'), ('am', 'assédio moral'), ('vpa', 'violência patrimonial'),
                              ('ho', 'homofobia'), ('le', 'lesbofobia'), ('tr', 'transfobia'), ('av', 'ameaça verbal'),
                              ('ou', 'outros'))

    violencia_fisica = models.BooleanField(default=False)
    violencia_psicologica = models.BooleanField(default=False)
    assedio_sexual = models.BooleanField(default=False)
    estupro = models.BooleanField(default=False)
    assedio_moral = models.BooleanField(default=False)
    violencia_patrimonial = models.BooleanField(default=False)
    homofobia = models.BooleanField(default=False)
    lesbofobia = models.BooleanField(default=False)
    transfobia = models.BooleanField(default=False)
    ameaca_verbal = models.BooleanField(default=False)
    outros = models.BooleanField(default=False)
    txt_outros = models.TextField(blank=True)
    txt_relato = models.TextField()
    data_relato = models.DateTimeField(default=datetime.now)


class Bolsista(models.Model):
    nome = models.CharField(max_length=200)
    email = models.EmailField(help_text='email do bolsista', default='email_exemplo@default.comp')
    pesquisa = models.ForeignKey(LinhaDePesquisa, blank=True, null=True, on_delete=models.SET_NULL)

    def __str__(self):
        return self.nome

class historicoGecal(models.Model):
    textoJumbotron = models.TextField()
    textoHistorico = models.TextField()

    def __get_jumbotron__(self):
        return self.textoJumbotron

    def __get_historico__(self):
        return self.textoHistorico

    def __str__(self):
        return "historico_gecal"



    """ se precisar fazer o tratamento posterior do campo de email
    def save(self, *args, **kwargs):
    # ... other things not important here
    self.email = self.email.lower().strip() # Hopefully reduces junk to ""
    if self.email != "": # If it's not blank
        if not email_re.match(self.email) # If it's not an email address
            raise ValidationError(u'%s is not an email address, dummy!' % self.email)
        if Contact.objects.filter(email = self.email) # If it already exists
            raise ValidationError(u'%s already exists in database, jerk' % self.email) 
    super(Contact, self).save(*args, **kwargs)
    
    
    def save(self, *args, **kwargs):
    if self.email is not None and self.email.strip() == "":
        self.email = None
    models.Model.save(self, *args, **kwargs)
    """