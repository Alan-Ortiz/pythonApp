from django.shortcuts import render
from django.contrib import messages
from .forms import PersonalForm

# Create your views here.
def show_form(request):
    if request.method == 'POST':
        form = PersonalForm(request.POST)
        if form.is_valid():
            personal = form.save(commit=False)
            personal.save()
            messages.success(request, 'The animal was inserted successfully')
            return render(request, 'index.html')
        else:
            messages.error(request, 'The name is repeated')
            return render(request, 'index.html')
    else:
        return render(request, 'index.html')
