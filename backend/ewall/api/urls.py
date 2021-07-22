from .views import PostsList
from django.urls import path

app_name = 'api'

urlpatterns = [
    path('',PostsList.as_view(),name='list'),
]
