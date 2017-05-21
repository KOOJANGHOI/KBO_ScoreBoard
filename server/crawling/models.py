from django.db import models

# Create your models here.

class Hitter(models.Model):
    name = models.CharField(max_length=110, blank=True)     # 이름
    team = models.CharField(max_length=110, blank=True)     # 팀
    rate = models.FloatField(default=0)         # 타율
    homerun = models.IntegerField(default=0)    # 홈런
    point = models.IntegerField(default=0)      # 타점


class Pitcher(models.Model):
    name = models.CharField(max_length=110, blank=True)
    team = models.CharField(max_length=110, blank=True)
    era = models.FloatField(default=0)          # 평균자책점
    win = models.IntegerField(default=0)        # 승수
    so = models.IntegerField(default=0)         # 탈삼진


class Team(models.Model):
    name = models.CharField(max_length=110)
    win = models.IntegerField(default=0)        # 승
    draw = models.IntegerField(default=0)       # 무
    lose = models.IntegerField(default=0)       # 패
    diff = models.FloatField(default=0)         # 게임차
    late = models.FloatField(default=0)         # 승률

