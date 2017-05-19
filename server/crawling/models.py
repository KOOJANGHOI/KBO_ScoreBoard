from django.db import models

# Create your models here.


class Player(models.Model):
    name = models.CharField(max_length=220)
    team = models.CharField(max_length=55)


class Hitter(models.Model):
    info = models.OneToOneField(Player)
    hit = models.IntegerField(default=0)
    number = models.IntegerField(default=0)


class Pitcher(models.Model):
    info = models.OneToOneField(Player)
    save = models.IntegerField(default=0)