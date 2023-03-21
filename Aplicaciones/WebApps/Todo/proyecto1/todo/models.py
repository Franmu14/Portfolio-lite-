from django.db import models

# Create your models here.

class Tarea(models.Model):
    tarea= models.CharField(max_length=100)

    def _str_ (self):
        return self.tarea