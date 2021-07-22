from django.shortcuts import render
from rest_framework.generics import ListCreateAPIView
from post.models import Post
from .serializers import PostsSerializer
# Create your views here.

class PostsList(ListCreateAPIView):
    queryset = Post.objects.all()
    serializer_class = PostsSerializer
