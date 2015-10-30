from django.db import models

# Create your models here.
class Gitnote(models.Model):
    projName    = models.CharField(max_length=30)
    appName     = models.CharField(max_length=30)
    servName    = models.CharField(max_length=30)
    opTime      = models.DateTimeField()
    gitcommitId = models.CharField(max_length=60)
    state       = models.IntegerField()
    tester      = models.CharField(max_length=30)
    remark      = models.TextField()
