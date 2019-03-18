from django.shortcuts import render
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from .models import News, Press


def collateral(request):
    return render(request, 'resources/collateral.html', {'nightmode': request.session['nightmode']})


def press(request):
    news = News.objects.all().order_by('-news_date')
    presses = Press.objects.all().order_by('-press_date')

    ''' Working version
    paginator = Paginator(news, 2)
    page = request.GET.get('page1')
    try:
        news = paginator.page(page)
    except PageNotAnInteger:
        news = paginator.page(1)
    except EmptyPage:
        news = paginator.page(paginator.num_pages)

    paginator = Paginator(presses, 2)
    page = request.GET.get('page2')
    try:
        presses = paginator.page(page)
    except PageNotAnInteger:
        presses = paginator.page(1)
    except EmptyPage:
        presses = paginator.page(paginator.num_pages)

    return render(request, 'resources/press.html', {'news': news, 'presses': presses, 'nightmode': request.session['nightmode']})
    '''
    return render(request, 'resources/press.html', {'news': news, 'presses': presses, 'nightmode': request.session['nightmode']})
