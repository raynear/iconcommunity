from django.http import HttpResponse


def update_session(request):
    #print(request.POST.get('mode'))
    #if not request.is_ajax() or not request.method=='POST':
        #return HttpResponseNotAllowed(['POST'])

    request.session['nightmode'] = request.POST.get('mode')
    return HttpResponse('ok')
