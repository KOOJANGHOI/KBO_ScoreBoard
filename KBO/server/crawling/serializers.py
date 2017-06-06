from rest_framework import serializers
from .models import Hitter, Pitcher, Team, Schedule


class HitterSerializer(serializers.ModelSerializer):
    class Meta:
        model = Hitter
        fields = '__all__'


class PitcherSerializer(serializers.ModelSerializer):
    class Meta:
        model = Pitcher
        fields = '__all__'


class TeamSerializer(serializers.ModelSerializer):
    class Meta:
        model = Team
        fields = '__all__'


class ScheduleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Schedule
        fields = ('state', 'day', 'time', 'home_team', 'home_score', 'away_team', 'away_score', 'stadium')
