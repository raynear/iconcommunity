from django.shortcuts import render


def about(request):
    if 'nightmode' not in request.session:
        request.session['nightmode'] = False
    if 'navbar' not in request.session:
        request.session['navbar'] = True
    return render(request, 'iconsensus/about.html', {'nightmode': request.session['nightmode'], 'navbar': request.session['navbar']})

