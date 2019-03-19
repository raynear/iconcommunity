from django.shortcuts import render
from .models import News, Press, VideoEvents, VideoInterviews
from el_pagination.decorators import page_template


@page_template('resources/video_events_page.html', key='video_events_page')
@page_template('resources/video_interviews_page.html', key='video_interviews_page')
def collateral(request, template='resources/collateral.html', extra_context=None):
    if 'nightmode' not in request.session:
        request.session['nightmode'] = False

    video_events = VideoEvents.objects.all().order_by('-video_events_date')
    for url in video_events:
        url.video_events_link = url.video_events_link.replace("watch?v=", "embed/")+"?rel=0"
    video_interviews = VideoInterviews.objects.all().order_by('-video_interviews_date')
    for url in video_interviews:
        url.video_interviews_link = url.video_interviews_link.replace("watch?v=", "embed/")+"?rel=0"
    context = {
        'video_events': video_events,
        'video_interviews': video_interviews,
        'nightmode': request.session['nightmode'],
    }
    if extra_context is not None:
        context.update(extra_context)
    return render(request, template, context)


@page_template('resources/news_page.html', key='news_page')
@page_template('resources/press_page.html', key='press_page')
def press(request, template='resources/press.html', extra_context=None):
    if 'nightmode' not in request.session:
        request.session['nightmode'] = False
    context = {
        'news': News.objects.all().order_by('-news_date'),
        'presses': Press.objects.all().order_by('-press_date'),
        'nightmode': request.session['nightmode'],
    }
    if extra_context is not None:
        context.update(extra_context)
    return render(request, template, context)
