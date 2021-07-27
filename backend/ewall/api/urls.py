from .views import PostsList,DeletePost,UpdatePost,RetrievePost,CreatePost,MyPostsList
from django.urls import path

app_name = 'api'

urlpatterns = [
    path('',PostsList.as_view(),name='list'),
    path('<int:pk>/',RetrievePost.as_view(),name='detail-post'),
    path('delete/<int:pk>',DeletePost.as_view(),name='delete'),
    path('update/<int:pk>',UpdatePost.as_view(),name='update'),
    path('create/',CreatePost.as_view(),name='create'),
    path('myposts/',MyPostsList.as_view(),name='myposts-list'),
]
