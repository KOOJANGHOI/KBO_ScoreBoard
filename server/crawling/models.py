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
    rate = models.FloatField(default=0)         # 승률


class Schedule(models.Model):
    state = models.IntegerField(default=1)      # 1 끝남, 0 아직
    home_team = models.CharField(max_length=110)
    # home_pitcher = models.CharField(max_length=110)
    home_score = models.PositiveIntegerField(null=True, blank=True)
    away_team = models.CharField(max_length=110)
    # away_pitcher = models.CharField(max_length=110)
    away_score = models.PositiveIntegerField(null=True, blank=True)
    stadium = models.CharField(max_length=110)
    time = models.CharField(max_length=110)
    day = models.CharField(max_length=110, null=True, blank=True)


class User(models.Model):
    username = models.CharField(max_length=110)
    ticket = models.PositiveIntegerField(default=0)