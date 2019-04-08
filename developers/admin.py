from django.contrib import admin
from .models import BlogTutorial, VideoTutorial, VideoPresentation

admin.site.register(BlogTutorial)
admin.site.register(VideoTutorial)
admin.site.register(VideoPresentation)