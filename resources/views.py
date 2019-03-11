from django.shortcuts import render


def collateral(request):
    return render(request, 'resources/collateral.html')


def press(request):
    return render(request, 'resources/press.html')
