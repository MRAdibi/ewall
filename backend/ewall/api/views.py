from django.shortcuts import render
from rest_framework.generics import ListAPIView
from post.models import Post
from .serializers import PostsSerializer
# Create your views here.

class PostsList(ListAPIView):
    queryset = Post.objects.all()
    serializer_class = PostsSerializer
    