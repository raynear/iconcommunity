from django.contrib import admin
from .models import News, Press, VideoEvents, VideoInterviews

admin.site.register(News)
admin.site.register(Press)
admin.site.register(VideoEvents)
admin.site.register(VideoInterviews)