# Coding guidelines
- We're strictly sticking to PEP8 style of formatting. This dependencies (isort and black) has been installed in the Pipenv file. Ensure to format your files with it before pushing.
- Add as much typing to functions as much as possible. For example:

```
def add_two_number(x, y):
    return x + y
```

is not as nice as

```
def add_two_numbers(x: int, y: int) -> int:
    return x + y
```
