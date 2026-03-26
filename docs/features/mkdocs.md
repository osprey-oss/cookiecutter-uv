# Documentation with MkDocs or Zensical

If `docs_tool` is set to `"mkdocs"` or `"zensical"`, documentation of your project is
automatically added using
[MkDocs](https://www.mkdocs.org/) or [Zensical](https://zensical.org). Next to that, if
`"include_github_actions"` is set to `"y"`, the documentation is
automatically deployed github action artifacts, and made available at
`https://<github_handle>.github.io/<project_name>/`.

To view the documentation locally, simply run

```bash
make docs
```

This command will generate and build your documentation, and start the server locally so you can access it at
<http://localhost:8000>.

## Deploying to GitHub Pages

Documentation is automatically built and deployed whenever you create a
[new release](./cicd.md#how-to-trigger-a-release) for your project.

### Initial Setup (One-time only)

To enable the modern deployment pipeline, you must configure your repository to
use GitHub Actions for hosting:

1. Navigate to Settings > Code and automation > Pages in your GitHub repository.
2. Under Build and deployment > Source, change the dropdown selection from "Deploy
from a branch" to GitHub Actions.

### Viewing your site

Once a release workflow has finished, your site will be live at:
https://<author_github_handle>.github.io/<project_name>/

## Documenting docstrings

The generated project also converts all
your docstrings into legible documentation. By default, the project is
configured to work with
[google](https://google.github.io/styleguide/pyguide.html) style
docstrings.

An example of a Google style docstring:

```python
def function_with_pep484_type_annotations(param1: int, param2: str) -> bool:
"""Example function with PEP 484 type annotations.

Args:
    param1: The first parameter.
    param2: The second parameter.

Returns:
    The return value. True for success, False otherwise.
```

For more examples, see
[here](https://sphinxcontrib-napoleon.readthedocs.io/en/latest/example_google.html).
