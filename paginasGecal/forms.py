from django import forms
from .models import  Formulario_denuncia
CHOICES = [('vivenciou','Foi vítima'),('presenciou','Foi testemunha')]


class DenunciaForm(forms.ModelForm):

    class Media:
        css = {
            'all': 'estilos.css',
        }

    class Meta:
        model = Formulario_denuncia
        fields = ['nome_denunciante','email_denunciante','telefone_denunciante',
          'tipo_de_experiencia','violencia_fisica','violencia_psicologica','assedio_sexual',
          'estupro', 'assedio_moral','violencia_patrimonial','homofobia','lesbofobia','transfobia',
          'ameaca_verbal','outros','txt_outros','txt_relato']



        labels = {'nome_denunciante': ('Seu nome '), 'violencia_fisica':('Violência Física'),
          'violencia_psicologica':('Violência Psicológica'),'assedio_sexual':('Assédio Sexual'),
          'assedio_moral': ('Assédio Moral'),'violencia_patrimonial':('Violência Patrimonial'),
          'homofobia': ('Homofobia'),'lesbofobia':('Lesbofobia'),'transfobia': ('Transfobia'),
          'ameaca_verbal':('Ameaça Verbal'), 'outros': ('Outros'), 'estupro': ('Estupro'),
          'txt_outros':('Descreva '),'txt_relato':('Descreva o fato')
        }


        help_texts = {'nome_denunciante': ('Nome da pessoa que está fazendo a denúncia')}

        # error_messages = {
        #     'email_denunciante': "This writer's name is too long."
        # }

        #self.fields['name'].error_messages = {'required': 'Please let us know what to call you!'}

        error_messages={'required': 'O formato do email não está valido. ___@___.___'}


        widgets = {
            'nome_denunciante':forms.TextInput(attrs={'class':'form-control',
                  'placeholder':'Insira aqui o nome ','name':'nome_denunciante'}),
            'email_denunciante': forms.TextInput(attrs={'class': 'form-control',
                'name': 'email_denunciante', 'placeholder': 'Aqui o email','type':'email'}),
            'telefone_denunciante': forms.TextInput(attrs={'class': 'form-control', 'placeholder': "Telefone aqui"}),
            'txt_outros':forms.TextInput(attrs={'name':'text_outros','class':'input_inline_block',
                  'disabled':True}),
            'tipo_de_experiencia':forms.RadioSelect(attrs={'class':'radio_bt_django','name':'radio'}),
            'violencia_fisica':forms.CheckboxInput(attrs={'class':'checkbox_checkmark_django'}),
            'violencia_psicologica': forms.CheckboxInput(attrs={'class': 'checkbox_checkmark_django'}),
            'assedio_sexual': forms.CheckboxInput(attrs={'class': 'checkbox_checkmark_django'}),
            'assedio_moral': forms.CheckboxInput(attrs={'class': 'checkbox_checkmark_django'}),
            'estupro': forms.CheckboxInput(attrs={'class': 'checkbox_checkmark_django'}),
            'violencia_patrimonial': forms.CheckboxInput(attrs={'class': 'checkbox_checkmark_django'}),
            'homofobia': forms.CheckboxInput(attrs={'class': 'checkbox_checkmark_django'}),
            'lesbofobia': forms.CheckboxInput(attrs={'class': 'checkbox_checkmark_django'}),
            'transfobia': forms.CheckboxInput(attrs={'class': 'checkbox_checkmark_django'}),
            'ameaca_verbal': forms.CheckboxInput(attrs={'class': 'checkbox_checkmark_django'}),
            'outros': forms.CheckboxInput(attrs={'class': 'checkbox_checkmark_django',
                'onchange':'habilita_desabilita_text_input_django()'}),
        }
