from django.http import HttpResponse
import json

#def update_session(request):
#    if not request.is_ajax() or not request.method=='POST':
#        return HttpResponseNotAllowed(['POST'])
#    request.session['nightmode'] = request.POST.get('mode')
#    return HttpResponse('ok')


def init_nightmode(request):
    if 'nightmode' not in request.session:
        request.session['nightmode'] = False
    return HttpResponse(json.dumps({'nightmode': request.session['nightmode']}), content_type="application/json")


def toggle_nightmode(request):
    request.session['nightmode'] = not request.session['nightmode']
    return HttpResponse(json.dumps({'nightmode': request.session['nightmode']}), content_type="application/json")

