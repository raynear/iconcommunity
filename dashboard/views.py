from django.shortcuts import render


def index(request):
    if 'nightmode' not in request.session:
        request.session['nightmode'] = False
    if 'navbar' not in request.session:
        request.session['navbar'] = True
    return render(request, 'dashboard/dashboard.html', {'nightmode': request.session['nightmode'], 'navbar': request.session['navbar']})

