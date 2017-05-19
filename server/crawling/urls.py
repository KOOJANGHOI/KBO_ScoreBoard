from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^hitters/$', views.hitter_list, name='hitter_list'),
    url(r'^hitters/(?P<pk>[0-9]+)/$', views.hitter_detail),
    url(r'^make_database/$', views.make_database_hitter, name='make_database'),
]