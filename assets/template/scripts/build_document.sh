#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

if command -v latexmk >/dev/null 2>&1; then
  exec latexmk -pdf dokument.tex
fi

pdflatex dokument.tex
biber dokument
pdflatex dokument.tex
pdflatex dokument.tex
