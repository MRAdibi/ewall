from rest_framework.serializers import ModelSerializer
from post.models import Post
from django.contrib.auth.models import User
class PostsSerializer(ModelSerializer):
    class Meta:
        model = Post
        fields = '__all__'


class UserSerializer(ModelSerializer):
    
    class Meta:
        model = User
        fields = '__all__'