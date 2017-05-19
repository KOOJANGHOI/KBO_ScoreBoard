from rest_framework import serializers
from .models import Hitter


class CrawlingSerializer(serializers.ModelSerializer):
    class Meta:
        model = Hitter
        fields = '__all__'
