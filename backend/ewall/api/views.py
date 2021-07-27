from django.shortcuts import render
from rest_framework.generics import * 
from post.models import Post
from .serializers import PostsSerializer, UserSerializer
from rest_framework.permissions import IsAuthenticated
from .permissions import IsAuthorOrReadOnly
# Create your views here.

class PostsList(ListAPIView):
    queryset = Post.objects.filter()
    serializer_class = PostsSerializer

class DeletePost(RetrieveDestroyAPIView):
    queryset = Post.objects.all()
    serializer_class = PostsSerializer
    permission_classes = (IsAuthenticated,IsAuthorOrReadOnly)

class CreatePost(CreateAPIView):
    queryset = Post.objects.all()
    serializer_class = PostsSerializer
    permission_classes = (IsAuthenticated,)

# check this view 
class UpdatePost(RetrieveUpdateAPIView):
    queryset = Post.objects.all()
    serializer_class = PostsSerializer
    permission_classes = (IsAuthenticated,IsAuthorOrReadOnly)

class RetrievePost(RetrieveAPIView):
    queryset = Post.objects.all()
    serializer_class = PostsSerializer

class MyPostsList(ListAPIView):
    serializer_class = PostsSerializer
    permission_classes = (IsAuthenticated,IsAuthorOrReadOnly)

    def get_queryset(self):
        user = self.request.user
        return Post.objects.filter(author=user)
    