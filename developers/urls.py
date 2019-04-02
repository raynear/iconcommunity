from django.urls import path

from . import views

urlpatterns = [
    path('', views.developers, name='developers'),
]