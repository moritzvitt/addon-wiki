# Anki Add-ons

This site combines the documentation for the Anki add-ons in the sibling `my-addons` and `other-addons` folders into one GitHub Pages site.

## What this site does

- Keeps each add-on's docs next to that add-on's code.
- Builds one unified site with a shared navigation tree.
- Lets GitHub Pages deploy a single static output from this repo.

## Included add-ons

### My add-ons

- Anki AI Automation
- GitHub-like Field Diff
- Browser Quick Tags
- Prompt Addon
- Editor Focus Mode
- Generated Field Swapper
- Limit Search Results
- Link Cards
- Cloze Formatting
- Order By Frequency
- Suspend Duplicates

### Other add-ons

- Prettify
- Smart Notes
- Japanese Pitch Accent
- Japanese Readings and Pitch Accent
- Starter Repo Add-on

## Local development

```bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements-docs.txt
mkdocs serve
```

The root `mkdocs.yml` pulls in each add-on's own `mkdocs.yml` by using `mkdocs-monorepo-plugin`.
