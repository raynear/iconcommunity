from django.urls import path

from . import views

urlpatterns = [
    path('about/', views.about, name='about'),
    path('candidates/', views.candidates, name='candidates'),
    path('candidate_detail/<int:pk>/', views.candidate_detail, name='candidate_detail'),
]
