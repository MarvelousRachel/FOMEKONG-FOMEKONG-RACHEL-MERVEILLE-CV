#!/usr/bin/env bash
set -euo pipefail

# Sync selected "source of truth" pages from the repo root into the GitHub Pages folder (docs/).
# Run this from the portfolio/ directory.

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOCS_DIR="$ROOT_DIR/docs"

mkdir -p "$DOCS_DIR"

copy_if_exists() {
  local src="$1"
  local dst="$2"
  if [[ -f "$src" ]]; then
    cp -f "$src" "$dst"
    echo "Synced: $(basename "$src") -> docs/"
  else
    echo "Skip (missing): $src" >&2
  fi
}

# Main website pages
copy_if_exists "$ROOT_DIR/publications.html" "$DOCS_DIR/publications.html"

# CV pages (online + download/export)
copy_if_exists "$ROOT_DIR/Rachel_Merveille_CV.html" "$DOCS_DIR/Rachel_Merveille_CV.html"
copy_if_exists "$ROOT_DIR/Rachel_Merveille_CV_download.html" "$DOCS_DIR/Rachel_Merveille_CV_download.html"
copy_if_exists "$ROOT_DIR/Rachel_Merveille_CV_export.html" "$DOCS_DIR/Rachel_Merveille_CV_export.html"

# Optional: also keep the simpler alias CV in docs if it exists
copy_if_exists "$ROOT_DIR/rachel-cv.html" "$DOCS_DIR/rachel-cv.html"

echo "Done."
