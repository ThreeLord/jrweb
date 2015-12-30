# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Announcement',
            fields=[
                ('id', models.IntegerField(serialize=False, primary_key=True)),
                ('title', models.CharField(max_length=100L, verbose_name='Title')),
                ('content', models.TextField(verbose_name='Content')),
                ('createddate', models.DateField(default=b'2015-11-18', null=True, verbose_name='Date', db_column='createdDate', blank=True)),
            ],
            options={
                'db_table': 't_announcement',
                'verbose_name': 'announcement',
                'verbose_name_plural': 'announcement',
            },
        ),
    ]
