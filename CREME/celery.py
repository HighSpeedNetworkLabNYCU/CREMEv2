from __future__ import absolute_import, unicode_literals

import os

from celery import Celery

# set the default Django settings module for the 'celery' program.
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'CREME.settings')

app = Celery('CREME')

# Using a string here means the worker doesn't have to serialize
# the 00_configuration object to child processes.
# - namespace='CELERY' means all celery-related 00_configuration keys
#   should have a `CELERY_` prefix.
app.config_from_object('django.conf:settings', namespace='CELERY')

# Load task modules from all registered Django app configs.
app.autodiscover_tasks()