from django.contrib import admin
from django.urls import include, path

urlpatterns = [
    path('iconsensus/', include('iconsensus.urls')),
    path('admin/', admin.site.urls),
]
