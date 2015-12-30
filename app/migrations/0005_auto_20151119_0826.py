# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0004_auto_20151118_1026'),
    ]

    operations = [
        migrations.AlterField(
            model_name='announcement',
            name='createddate',
            field=models.DateField(default=b'2015-11-19', null=True, verbose_name='Date', db_column='createdDate', blank=True),
        ),
        migrations.AlterField(
            model_name='news',
            name='createddate',
            field=models.DateField(default=b'2015-11-19', null=True, verbose_name='Created Date', db_column='createdDate', blank=True),
        ),
        migrations.AlterField(
            model_name='products',
            name='createddate',
            field=models.DateField(default=b'2015-11-19', verbose_name='Created Date', db_column='createdDate', blank=True),
        ),
    ]
