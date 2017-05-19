from rest_framework import serializers
from .models import Hitter, Player


class CrawlingSerializer(serializers.ModelSerializer):
    class Meta:
        model = Hitter
        exclude = ['info']
