from django.urls import path

from . import views

urlpatterns = [
    path('collateral/', views.collateral, name='collateral'),
    path('download/', views.download, name='download'),
]