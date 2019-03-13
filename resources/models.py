from django.db import models

import datetime


class PressRelease(models.Model):
    #Logo, Site, Title, Link, Date, Display, Created, Updated
    #pr_logo = models.
    pr_site = models.CharField(max_length=200, default='')
    pr_link = models.URLField(max_length=500, default='')
    pr_date = models.DateField(_("Date"), default=datetime.date.today)
    pr_display = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

