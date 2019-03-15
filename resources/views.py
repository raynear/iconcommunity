from django.shortcuts import render
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from .models import News, Press


def collateral(request):
    return render(request, 'resources/collateral.html', {'nightmode': request.session['nightmode']})


def press(request):
    news = News.objects.all().order_by('-news_date')
    presses = Press.objects.all().order_by('-press_date')

    #press_page = request.GET.get('page', 1)
    #press_paginator = Paginator(presses, 4)
    #try:
    #    press_show = press_paginator.page(press_page)
    #except PageNotAnInteger:
    #    press_show = press_paginator.page(1)
    #except EmptyPage:
    #    press_show = press_paginator.page(press_paginator.num_pages)


    paginator = Paginator(news, 4)
    page = request.GET.get('page1')
    try:
        news = paginator.page(page)
    except PageNotAnInteger:
        news = paginator.page(1)
    except EmptyPage:
        news = paginator.page(paginator.num_pages)

    paginator = Paginator(presses, 4)
    page = request.GET.get('page2')
    try:
        presses = paginator.page(page)
    except PageNotAnInteger:
        presses = paginator.page(1)
    except EmptyPage:
        presses = paginator.page(paginator.num_pages)

    return render(request, 'resources/press.html', {'news': news, 'presses': presses, 'nightmode': request.session['nightmode']})