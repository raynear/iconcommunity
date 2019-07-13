from django.urls import path

from . import views

urlpatterns = [
    path('about/', views.about, name='about'),
    path('candidates/', views.candidates, name='candidates'),
]
