# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2017-06-06 10:46
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('crawling', '0006_gift_prediction'),
    ]

    operations = [
        migrations.AddField(
            model_name='schedule',
            name='game_id',
            field=models.IntegerField(default=0),
        ),
    ]