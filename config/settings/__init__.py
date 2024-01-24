from .base import GENERAL_SETTINGS

if GENERAL_SETTINGS.ENVIRONMENT == "dev":
    from .dev import *  # noqa 403
elif GENERAL_SETTINGS.ENVIRONMENT == "staging":
    from .staging import *  # noqa 403
elif GENERAL_SETTINGS.ENVIRONMENT == "prod":
    from .prod import *  # noqa 403
