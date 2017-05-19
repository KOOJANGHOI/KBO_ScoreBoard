from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^hitters/$', views.hitter_list, name='hitter_list'),
    url(r'^hitters/(?P<pk>[0-9]+)/$', views.hitter_detail),
]