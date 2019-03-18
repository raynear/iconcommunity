from django.shortcuts import render


def index(request):
    if 'nightmode' not in request.session:
        request.session['nightmode'] = False
    return render(request, 'dashboard/index.html', {'nightmode': request.session['nightmode']})

