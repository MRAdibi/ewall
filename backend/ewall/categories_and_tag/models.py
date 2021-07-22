from django.db import models

# Create your models here.

class Tags(models.Model):
    title = models.CharField('عنوان برچسب', max_length=200,null=False)

    def __str__(self):
        return self.title

class Categories(models.Model):
    name = models.CharField('نام دسته بندی',max_length=200,null=False)
    parent_category = models.ForeignKey("Categories", verbose_name="دسته بندی والد", on_delete=models.PROTECT,blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name
