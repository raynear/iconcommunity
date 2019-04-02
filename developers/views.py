from django.shortcuts import render
from .models import BlogTutorial, VideoTutorial
from el_pagination.decorators import page_template



@page_template('resources/news_page.html', key='news_page')
def press(request, template='resources/press.html', extra_context=None):
    if 'nightmode' not in request.session:
        request.session['nightmode'] = False
    if 'navbar' not in request.session:
        request.session['navbar'] = True
    context = {
        'news': News.objects.all().order_by('-news_date'),
        'presses': Press.objects.all().order_by('-press_date'),
        'nightmode': request.session['nightmode'],
        'navbar': request.session['navbar'],
    }
    if extra_context is not None:
        context.update(extra_context)
    return render(request, template, context)
