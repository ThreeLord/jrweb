# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0003_delete_announcement'),
    ]

    operations = [
        migrations.CreateModel(
            name='About',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True)),
                ('title', models.CharField(max_length=150L, blank=True)),
                ('content', models.TextField(blank=True)),
            ],
            options={
                'db_table': 't_about',
                'verbose_name': 'about',
                'verbose_name_plural': 'about',
            },
        ),
        migrations.CreateModel(
            name='AboutCategory',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True)),
                ('catname', models.CharField(max_length=150L, blank=True)),
            ],
            options={
                'db_table': 't_about_category',
                'verbose_name': 'about_category',
                'verbose_name_plural': 'about_category',
            },
        ),
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
        migrations.CreateModel(
            name='Download',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True)),
                ('title', models.CharField(max_length=150L, blank=True)),
                ('content', models.TextField(blank=True)),
                ('downloadurl', models.CharField(max_length=200L, blank=True)),
                ('createddate', models.DateField(null=True, db_column='createdDate', blank=True)),
            ],
            options={
                'db_table': 't_download',
                'verbose_name': 'download',
                'verbose_name_plural': 'download',
            },
        ),
        migrations.CreateModel(
            name='DownloadCategory',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True)),
                ('catname', models.CharField(max_length=150L, blank=True)),
            ],
            options={
                'db_table': 't_download_category',
                'verbose_name': 'download_category',
                'verbose_name_plural': 'download_category',
            },
        ),
        migrations.CreateModel(
            name='Faq',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True)),
                ('title', models.CharField(max_length=150L, verbose_name='title', blank=True)),
                ('content', models.TextField(verbose_name='content', blank=True)),
            ],
            options={
                'db_table': 't_faq',
                'verbose_name': 'faq',
                'verbose_name_plural': 'faq',
            },
        ),
        migrations.CreateModel(
            name='FaqCategory',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True)),
                ('catname', models.CharField(max_length=150L, blank=True)),
            ],
            options={
                'db_table': 't_faq_category',
                'verbose_name': 'faq_category',
                'verbose_name_plural': 'faq_category',
            },
        ),
        migrations.CreateModel(
            name='News',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True)),
                ('title', models.CharField(max_length=255L, verbose_name='Title', blank=True)),
                ('content', models.TextField(verbose_name='Content', blank=True)),
                ('createddate', models.DateField(default=b'2015-11-18', null=True, verbose_name='Created Date', db_column='createdDate', blank=True)),
            ],
            options={
                'db_table': 't_news',
                'verbose_name': 'news',
                'verbose_name_plural': 'news',
            },
        ),
        migrations.CreateModel(
            name='ProductCategory',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True)),
                ('catname', models.CharField(max_length=150L, blank=True)),
            ],
            options={
                'db_table': 't_product_category',
                'verbose_name': 'product_category',
                'verbose_name_plural': 'product_category',
            },
        ),
        migrations.CreateModel(
            name='Products',
            fields=[
                ('id', models.IntegerField(serialize=False, primary_key=True)),
                ('product_name', models.CharField(max_length=200L, verbose_name='Name')),
                ('product_simple_desc', models.TextField(verbose_name='Simple Desc', blank=True)),
                ('product_full_desc', models.TextField(verbose_name='Full Desc', blank=True)),
                ('product_pic', models.CharField(max_length=200L, verbose_name='Picture Path', blank=True)),
                ('product_order', models.IntegerField(verbose_name='Order')),
                ('createddate', models.DateField(default=b'2015-11-18', verbose_name='Created Date', db_column='createdDate', blank=True)),
                ('catid', models.ForeignKey(db_column='catid', verbose_name='catid', to='app.ProductCategory')),
            ],
            options={
                'db_table': 't_products',
                'verbose_name': 'products',
                'verbose_name_plural': 'products',
            },
        ),
        migrations.CreateModel(
            name='Service',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True)),
                ('title', models.CharField(max_length=150L, blank=True)),
                ('content', models.TextField(blank=True)),
            ],
            options={
                'db_table': 't_service',
                'verbose_name': 'service',
                'verbose_name_plural': 'service',
            },
        ),
        migrations.CreateModel(
            name='ServiceCategory',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True)),
                ('catname', models.CharField(max_length=150L, blank=True)),
            ],
            options={
                'db_table': 't_service_category',
                'verbose_name': 'service_category',
                'verbose_name_plural': 'service_category',
            },
        ),
        migrations.AddField(
            model_name='service',
            name='catid',
            field=models.ForeignKey(db_column='catid', verbose_name='catid', to='app.ServiceCategory'),
        ),
        migrations.AddField(
            model_name='faq',
            name='catid',
            field=models.ForeignKey(db_column='catid', verbose_name='catid', to='app.FaqCategory'),
        ),
        migrations.AddField(
            model_name='download',
            name='catid',
            field=models.ForeignKey(db_column='catid', verbose_name='catid', to='app.DownloadCategory'),
        ),
        migrations.AddField(
            model_name='about',
            name='catid',
            field=models.ForeignKey(db_column='catid', verbose_name='catid', to='app.AboutCategory'),
        ),
    ]
