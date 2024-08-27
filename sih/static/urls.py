from django.urls import path
from . import views

urlpatterns = [
    path('',views.home,name='home'),
    path('about/',views.about,name='about'),
    path('einfo/',views.einfo,name='einfo'),
    path('aoj/',views.adminofjustice,name='aoj'),
    path('status/',views.casestatus,name='casestatus'),
]