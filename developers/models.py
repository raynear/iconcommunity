from django.db import models

import datetime
from django.utils.translation import gettext as _


class BlogTutorial(models.Model):
    blog_tutorial_logo = models.ImageField(upload_to='blogtutorial/')
    blog_tutorial_title = models.CharField(max_length=2000, default='')
    blog_tutorial_link = models.URLField(max_length=500, default='')
    blog_tutorial_date = models.DateField(_("Date"), default=datetime.date.today)
    blog_tutorial_display = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.blog_tutorial_title


class VideoTutorial(models.Model):
    video_tutorial_title = models.CharField(max_length=2000, default='')
    video_tutorial_link = models.URLField(max_length=500, default='')
    video_tutorial_date = models.DateField(_("Date"), default=datetime.date.today)
    video_tutorial_display = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.video_tutorial_title


class VideoPresentation(models.Model):
    video_presentation_title = models.CharField(max_length=2000, default='')
    video_presentation_link = models.URLField(max_length=500, default='')
    video_presentation_date = models.DateField(_("Date"), default=datetime.date.today)
    video_presentation_display = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.video_presentation_title