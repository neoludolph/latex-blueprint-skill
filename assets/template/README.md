# LaTeX Blueprint

<div align="center">
  <h3>Structured, ready-to-use template for scientific documents</h3>
  <p>
    <img alt="LaTeX" src="https://img.shields.io/badge/LaTeX-KOMA--Script-00897B?logo=latex&logoColor=white">
    <img alt="Language" src="https://img.shields.io/badge/Language-German-1E88E5">
    <img alt="Build" src="https://img.shields.io/badge/Build-pdflatex%20%2B%20bibtex-F57C00">
    <img alt="Output" src="https://img.shields.io/badge/Output-PDF-455A64">
  </p>
</div>

This repository provides a complete LaTeX scaffold for German-language reports, seminar papers, bachelor projects, and thesis-like documents.

## Highlights

- Clean chapter-based structure (`kapitel/`, `anhang/`, `meta/`, `bib/`, `bilder/`)
- Dynamic main-body outline based on your own agreed chapter structure
- KOMA-Script setup with consistent typography and page layout
- Ready-to-use examples for:
  - citations and bibliography (`biblatex` + `bibtex`)
  - figures, tables, and code listings
  - TikZ diagrams and Gantt charts (`pgfgantt`)
  - acronyms and appendix indexes
- Included cleanup workflow via `Makefile`

## Project Structure

```text
.
|-- dokument.tex                      # Main entry point
|-- kapitel/
|   |-- kapitel1.tex                  # Example chapter, replace as needed
|   `-- kapitel2.tex                  # Example chapter, replace as needed
|-- meta/
|   |-- titelblatt.tex
|   |-- abkuerzungsverzeichnis.tex
|   `-- ...
|-- anhang/
|   |-- anhang_abbildungen.tex
|   |-- anhang_tabellen.tex
|   `-- ...
|-- bib/
|   `-- literatur.bib
|-- bilder/
|   |-- RH-Logo.png
|   `-- Schaevenstraße.jpg
`-- Makefile
```

## Quick Start

1. Edit metadata in `dokument.tex` (author, title, field of study, etc.).
2. Define the outline of your work and map each main chapter to its own file in `kapitel/`.
3. Update the chapter `\input{kapitel/...}` block in `dokument.tex` to match your outline.
4. Adjust supporting files in `meta/` (title page, acronyms, declarations).
5. Write your content in `kapitel/` and optional appendix material in `anhang/`.
6. Build the document to generate `dokument.pdf`.

## Build

```bash
pdflatex dokument.tex
bibtex dokument
pdflatex dokument.tex
pdflatex dokument.tex
```

Alternative using `latexmk`:

```bash
latexmk -pdf -bibtex dokument.tex
```

## Cleanup

```bash
make clean      # remove common LaTeX temp files
make clean-all  # aggressive cleanup (keeps only core source/output files)
```

## Included Output

- Main PDF: `dokument.pdf`
- Additional sample output may be generated depending on your local build flow.

## Notes

- The template is configured for German-language documents (`babel` with `ngerman`).
- The template layout is fixed, but the chapter structure of the main body is intentionally flexible.
- Bibliography backend is set to `bibtex` in `dokument.tex`.
- `.gitignore` already covers common LaTeX build artifacts.
