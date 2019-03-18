from django.http import HttpResponse
import json

'''
def init_nightmode(request):
    if 'nightmode' not in request.session:
        request.session['nightmode'] = False
    return HttpResponse(json.dumps({'nightmode': request.session['nightmode']}), content_type="application/json")
'''


def toggle_nightmode(request):
    request.session['nightmode'] = not request.session['nightmode']
    return HttpResponse(json.dumps({'nightmode': request.session['nightmode']}), content_type="application/json")