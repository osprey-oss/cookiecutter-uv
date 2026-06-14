from importlib.metadata import PackageNotFoundError, version

try:
    __version__ = version("{{cookiecutter.project_name}}")
except PackageNotFoundError:  # pragma: no cover
    # Package is not installed (e.g. running from a source checkout
    # without an editable install).
    __version__ = "0.0.0"
