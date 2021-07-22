from django.db import models

# Create your models here.

class Tags(models.Model):
    title = models.CharField('عنوان برچسب', max_length=200,null=False)

class Categories(models.Model):
    name = models.CharField('نام دسته بندی',max_length=200,null=False)
    parent_category = models.ForeignKey("Categories", verbose_name="دسته بندی والد", on_delete=models.PROTECT,null=True)
    # cover =  # fix it
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)