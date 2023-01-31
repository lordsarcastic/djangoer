# Models
Models are expected to be as lean as possible and should contain the following fields in addition to custom fields:
- created_at: A `Datetime` field added when a record is created. Should never be updated after that time
- updated_at: A `Datetime` field added when a record is updated. Should be updated with the current time whenever any of the record field changes.

# Imports
Imports in files are to be in the structure:
```
Standard library imports
<empty space>
Django specific imports
<empty space>
Third party library imports
<empty space>
Imports within the same module
Imports within the project from another moduel
```

## Extra notes on imports
- `import module` type of imports should come before `from module import functionality` types.
- Imports should be sorted alphabetically. Editors like VSCode has the functionality to help you sort imports this way.
- Imports involving more than three functionalities should be broken up into lines and bracketed.
## Examples
From a `models.py` file:
```
import uuid
from functools import lru_cache #
from typing import List

from django.core.exceptions import ValidationError
from django.db import models
from django.urls import reverse
from django.utils.translation import gettext_lazy as _ # note how nested imports are sorted in order of depth


from .utils import arrayfy_strings, clean_array, validate_dataset
from Learning.utils import produce_dataframe, read_file_data, ALLOWED_EXTENSIONS
```

From a `serializers.py` file:
```
import pickle
from functools import lru_cache
from typing import Callable, Dict, List

# note how exceptions with an 'e' comes before 'files' with an 'f'
from django.core.exceptions import ValidationError
from django.core.files.base import ContentFile
from django.utils.timesince import timesince
from django.utils.translation import gettext_lazy as _

from rest_framework import serializers
from sklearn import metrics

from .models import TrainingModel
from .utils import arrayfy_strings, clean_array, remove_chars_from_string
from Learning.classifier import decision_tree_classifier, random_forest_classifier
from Learning.feature_selection import pearson_feature_selection, rfe_feature_selection
# note how imports below are bracketed since they are more than 3
from Learning.utils import (
    GRADE_VALUE,
    TRANSPOSED_GP_VALUE,
    produce_dataframe,
    read_file_data,
    ALLOWED_EXTENSIONS
)
```