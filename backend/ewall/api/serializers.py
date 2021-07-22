from rest_framework.serializers import ModelSerializer
from post.models import Post
class PostsSerializer(ModelSerializer):
    class Meta:
        model = Post
        fields = '__all__'