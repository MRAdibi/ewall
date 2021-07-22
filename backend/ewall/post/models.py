from django.db import models
from django.contrib.auth.models import User
from django.utils import timezone
# Create your models here.
class Post(models.Model):
    title = models.CharField('عنوان',max_length=200)
    detail = models.TextField('توضیحات',default='توضیحاتی وجود ندارد!')
    author = models.ForeignKey(User,on_delete=models.CASCADE)
    contact_details  = author.name
    # covers = connect to covers table
    cities = (
        (1,'بوشهر'),
        (2,'اصفهان'),
        (3,'تهران'),
    )

    city = models.IntegerField('شهر شما : ', choices=cities)
    description = models.CharField(max_length=200,default=detail[:201]) #not show to user 
    slug = models.SlugField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    published_at = models.DateTimeField(default=timezone.now)
    status = models.BooleanField('نمایش داده شود؟')


    