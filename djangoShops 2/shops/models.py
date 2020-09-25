import uuid

from django.db import models

# Create your models here.
class shops(models.Model):
    id = models.CharField(max_length=255,primary_key=True, auto_created=True, default=uuid.uuid4, editable=False)
    title = models.CharField(max_length=255,null=True,blank=True)
    content = models.TextField(null=True,blank=True)
    price = models.FloatField(default=0,null=True,blank=True)
    fileUrl = models.CharField(max_length=255,null=True,blank=True)


class files(models.Model):
    id = models.CharField(max_length=255, primary_key=True, auto_created=True, default=uuid.uuid4, editable=False)
    name = models.CharField(max_length=255, verbose_name="name of pic")
    url = models.FileField(upload_to='uploads/%Y%m%d/', verbose_name="url of pic")