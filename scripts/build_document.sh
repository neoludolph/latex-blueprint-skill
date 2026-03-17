#!/usr/bin/env bash
set -euo pipefail

project_dir="${1:-.}"
cd "$project_dir"

if command -v latexmk >/dev/null 2>&1; then
  exec latexmk -pdf -bibtex dokument.tex
fi

pdflatex dokument.tex
bibtex dokument
pdflatex dokument.tex
pdflatex dokument.tex
