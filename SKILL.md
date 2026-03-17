---
name: latex-blueprint
description: Packaged German-language LaTeX skill for scientific reports, seminar papers, praxis transfer documents, and thesis-like work based on KOMA-Script. Use when Codex should install a ready-to-edit academic LaTeX template into a workspace, adapt the bundled scaffold, maintain chapter-based document structure, or help with bibliography, acronyms, appendix indexes, figures, tables, and code listings in German-language academic documents.
---

# Latex Blueprint

Install the bundled template into the target workspace before making broad structural changes. Keep the template layout unless the user explicitly requests a different document architecture.

## Workflow

1. If the workspace does not already contain the template, run `scripts/install_template.sh <target-dir>`.
2. Read `<target-dir>/dokument.tex` first.
3. Update the metadata commands in `dokument.tex`.
4. Edit main content in `kapitel/`, supporting pages in `meta/`, and appendix material in `anhang/`.
5. Build with `scripts/build_document.sh <target-dir>`.
6. Clean auxiliary files with `scripts/clean_document.sh <target-dir>` when needed.

## Bundled Resources

- `assets/template/`: complete project scaffold to copy into a new or empty target directory.
- `references/vorgaben.md`: chapter-level guidance for scientific/project reports in German.
- `scripts/install_template.sh`: copies the bundled template into a target directory without overwriting existing files.
- `scripts/build_document.sh`: builds the document in a target directory.
- `scripts/clean_document.sh`: removes LaTeX auxiliary files in a target directory.

## Editing Rules

- Keep reusable formatting and package changes in `dokument.tex`.
- Keep chapter prose in `kapitel/` and appendix material in `anhang/`.
- Add bibliography entries to `bib/literatur.bib` instead of hardcoding source data in chapters.
- Use the existing acronym setup in `meta/abkuerzungen.tex` and `meta/abkuerzungsverzeichnis.tex`.
- Move large code listings, wide tables, and supplementary evidence into the appendix when that improves readability.
- Follow German-language academic conventions unless the user explicitly requests another language.

## Build Notes

- Preferred command:

```bash
scripts/build_document.sh <target-dir>
```

- Manual fallback inside the target directory:

```bash
pdflatex dokument.tex
bibtex dokument
pdflatex dokument.tex
pdflatex dokument.tex
```

- Use `references/vorgaben.md` when the user needs help structuring sections such as Projektbeschreibung, Methodik, Konzeptionierung, Implementierung, Testphase, or Projektabschluss.
