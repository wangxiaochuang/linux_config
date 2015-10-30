# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Gitnote',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('projName', models.CharField(max_length=30)),
                ('appName', models.CharField(max_length=30)),
                ('servName', models.CharField(max_length=30)),
                ('opTime', models.DateTimeField()),
                ('gitcommitId', models.CharField(max_length=60)),
                ('state', models.IntegerField()),
                ('Tester', models.CharField(max_length=30)),
                ('remark', models.TextField()),
            ],
        ),
    ]
