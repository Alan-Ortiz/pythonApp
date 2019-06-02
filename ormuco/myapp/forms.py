from django import forms
from .models import Personal

class PersonalForm(forms.ModelForm):
    class Meta:
        model = Personal
        fields = ('name', 'color', 'animal')
