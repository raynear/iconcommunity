from django.http import HttpResponse
import json
from django.http import JsonResponse


def update_session(request):
    #print(request.POST.get('mode'))
    #if not request.is_ajax() or not request.method=='POST':
        #return HttpResponseNotAllowed(['POST'])

    request.session['nightmode'] = request.POST.get('mode')
    return HttpResponse('ok')


def init_nightmode(request):
    if 'nightmode' not in request.session:
        request.session['nightmode'] = False
    #return HttpResponse(str(request.session['nightmode']))
    return HttpResponse(json.dumps({'nightmode': request.session['nightmode']}), content_type="application/json")
    #return JsonResponse({'foo': 'bar'})


def toggle_nightmode(request):
    request.session['nightmode'] = not request.session['nightmode']
    print(request.session['nightmode']);
    return HttpResponse(json.dumps({'nightmode': request.session['nightmode']}), content_type="application/json")

