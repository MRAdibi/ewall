# Generated by Django 3.2.1 on 2021-07-22 20:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('post', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='post',
            name='description',
            field=models.CharField(default='توضیحات', max_length=200),
        ),
        migrations.DeleteModel(
            name='Comments',
        ),
    ]
