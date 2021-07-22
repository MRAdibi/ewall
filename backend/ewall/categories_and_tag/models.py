from django.db import models

# Create your models here.

class Tags(models.Model):
    title = models.CharField('عنوان برچسب', max_length=200)

class Categories(models.Model):
    name = models.CharField('نام دسته بندی',max_length=200)
    parent_category = models.ForeignKey("Categories", verbose_name="دسته بندی والد", on_delete=models.PROTECT)
    # cover =  # fix it
    created_at = models.DateTimeField(auto_now_add=False)
    updated_at = models.DateTimeField(auto_now=True)