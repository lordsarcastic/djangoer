from datetime import timedelta

from .base import *  # noqa 403

DEBUG = True

CORS_ALLOW_ALL_ORIGINS = True

SIMPLE_JWT["ACCESS_TOKEN_LIFETIME"] = timedelta(days=30)  # noqa 405
