from django.shortcuts import render


def collateral(request):
    return render(request, 'resources/collateral.html')


def download(request):
    return render(request, 'resources/download.html')
