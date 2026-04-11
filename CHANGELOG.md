# Changelog

## Unreleased

- Updated the GitHub Pages workflow to use `actions/setup-python@v6` and `actions/configure-pages@v6` so the docs deployment stays compatible with the Node 24 runtime transition.
- Hardened shared docs placeholder generation so the site still builds when an add-on repository is checked out but does not yet provide its own `mkdocs.yml`.
