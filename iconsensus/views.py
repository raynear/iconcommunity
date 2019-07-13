from django.shortcuts import render
from .models import CorePrep


def about(request):
    if 'nightmode' not in request.session:
        request.session['nightmode'] = False
    if 'navbar' not in request.session:
        request.session['navbar'] = True

    context = {
        'nightmode': request.session['nightmode'],
        'navbar': request.session['navbar'],
        'section': 'ICONSENSUS',
        'subsection': 'ABOUT',
    }
    return render(request, 'iconsensus/about.html', context)


def candidates(request):
    if 'nightmode' not in request.session:
        request.session['nightmode'] = False
    if 'navbar' not in request.session:
        request.session['navbar'] = True

    preps = CorePrep.objects.using('prepsqlite3').filter(display=True).order_by('-id')
    total = CorePrep.objects.using('prepsqlite3').filter(display=True).count

    context = {
        'nightmode': request.session['nightmode'],
        'navbar': request.session['navbar'],
        'section': 'ICONSENSUS',
        'subsection': 'CANDIDATES',
        'preps': preps,
        'total': total,
    }

    return render(request, 'iconsensus/candidates.html', context)
