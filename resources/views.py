from django.shortcuts import render
from .models import News, Press

def collateral(request):
    return render(request, 'resources/collateral.html')


def press(request):
    news = News.objects.all().order_by('-news_date')
    presses = Press.objects.all().order_by('-press_date')
    return render(request, 'resources/press.html', {'news': news, 'presses': presses})
