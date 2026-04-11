#!/usr/bin/env bash

set -euo pipefail

repo_root="$(pwd)"
addons_root="$repo_root/../my-addons"

mkdir -p "$addons_root"

create_placeholder_addon() {
  local slug="$1"
  local title="$2"
  local message="$3"

  if [ -f "$addons_root/$slug/mkdocs.yml" ]; then
    return
  fi

  mkdir -p "$addons_root/$slug/docs"

  cat >"$addons_root/$slug/mkdocs.yml" <<EOF
site_name: $title
docs_dir: docs

nav:
  - Overview: index.md
EOF

  cat >"$addons_root/$slug/docs/index.md" <<EOF
# $title

$message

This page is a temporary placeholder used by the shared docs site build.
EOF
}

create_placeholder_addon \
  "anki-ai-automation" \
  "Anki AI Automation" \
  "This add-on repository does not provide a mkdocs configuration yet, so the shared docs site is using a temporary placeholder page."

create_placeholder_addon \
  "anki-github-diff" \
  "GitHub-like Field Diff" \
  "This add-on repository is missing from the Pages checkout or does not provide a mkdocs configuration yet, so the shared docs site is using a temporary placeholder page."

create_placeholder_addon \
  "browser-quick-tags" \
  "Browser Quick Tags" \
  "This add-on repository is missing from the Pages checkout or does not provide a mkdocs configuration yet, so the shared docs site is using a temporary placeholder page."

create_placeholder_addon \
  "chatgpt-helper" \
  "Prompt Addon" \
  "This add-on repository is missing from the Pages checkout or does not provide a mkdocs configuration yet, so the shared docs site is using a temporary placeholder page."

create_placeholder_addon \
  "editor-focus-mode" \
  "Editor Focus Mode" \
  "This add-on repository does not provide a mkdocs configuration yet, so the shared docs site is using a temporary placeholder page."

create_placeholder_addon \
  "field-swapper" \
  "Generated Field Swapper" \
  "This add-on repository is missing from the Pages checkout or does not provide a mkdocs configuration yet, so the shared docs site is using a temporary placeholder page."

create_placeholder_addon \
  "limit-search-results" \
  "Limit Search Results" \
  "This add-on repository does not provide a mkdocs configuration yet, so the shared docs site is using a temporary placeholder page."

create_placeholder_addon \
  "link-cards" \
  "Link Cards" \
  "This add-on repository is missing from the Pages checkout or does not provide a mkdocs configuration yet, so the shared docs site is using a temporary placeholder page."

create_placeholder_addon \
  "misc-formatting" \
  "Cloze Formatting" \
  "This add-on repository does not provide a mkdocs configuration yet, so the shared docs site is using a temporary placeholder page."

create_placeholder_addon \
  "order-by-frequency" \
  "Order By Frequency" \
  "This add-on repository does not provide a mkdocs configuration yet, so the shared docs site is using a temporary placeholder page."

create_placeholder_addon \
  "suspend-duplicates" \
  "Suspend Duplicates" \
  "This add-on repository is missing from the Pages checkout or does not provide a mkdocs configuration yet, so the shared docs site is using a temporary placeholder page."
