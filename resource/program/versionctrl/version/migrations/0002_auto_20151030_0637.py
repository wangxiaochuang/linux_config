# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('version', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='gitnote',
            old_name='Tester',
            new_name='tester',
        ),
    ]
