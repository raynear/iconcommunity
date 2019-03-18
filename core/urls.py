from django.contrib import admin
from django.urls import include, path
from django.conf import settings
from django.conf.urls.static import static
from . import views

urlpatterns = [
    path('i18n/', include('django.conf.urls.i18n')),
    path('dashboard/', include('dashboard.urls')),
    path('resources/', include('resources.urls')),
    path('admin/', admin.site.urls),
    #path('update_session/', views.update_session, name='update_session'),
    path('toggle_nightmode/', views.toggle_nightmode, name='toggle_nightmode'),
    #path('init_nightmode/', views.init_nightmode, name='init_nightmode')
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
