from django.shortcuts import render
from .models import News, Press
from el_pagination.decorators import page_template


def collateral(request):
    return render(request, 'resources/collateral.html', {'nightmode': request.session['nightmode']})


'''
def press2(request):
    news = News.objects.all().order_by('-news_date')
    print(news)
    presses = Press.objects.all().order_by('-press_date')
    print(presses)
    return render(request, 'resources/press.html', {'news': news, 'presses': presses, 'nightmode': request.session['nightmode']})
'''


@page_template('resources/news_page.html', key='news_page')
@page_template('resources/press_page.html', key='press_page')
def press(request, template='resources/press.html', extra_context=None):
    context = {
        'news': News.objects.all().order_by('-news_date'),
        'presses': Press.objects.all().order_by('-press_date'),
        'nightmode': request.session['nightmode'],
    }
    if extra_context is not None:
        context.update(extra_context)
    return render(request, template, context)
