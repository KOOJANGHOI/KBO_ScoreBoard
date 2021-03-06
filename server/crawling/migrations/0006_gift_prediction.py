# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2017-06-06 10:39
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('crawling', '0005_auto_20170606_1020'),
    ]

    operations = [
        migrations.CreateModel(
            name='Gift',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=330)),
                ('num', models.IntegerField(default=0)),
            ],
        ),
        migrations.CreateModel(
            name='Prediction',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('result', models.IntegerField(default=0)),
                ('schedule', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='crawling.Schedule')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='crawling.User')),
            ],
        ),
    ]
