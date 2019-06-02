from django.db import models

# Create your models here.
class Personal(models.Model):
    name = models.CharField(max_length=100,unique=True)
    color = models.CharField(max_length=20)
    animal = models.CharField(max_length=3)
