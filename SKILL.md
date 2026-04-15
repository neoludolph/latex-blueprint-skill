---
name: latex-blueprint
description: Packaged German-language LaTeX skill for scientific reports, seminar papers, bachelor projects, and bachelor theses based on KOMA-Script. Use when Codex should install a ready-to-edit academic LaTeX template into a workspace, adapt the bundled scaffold to a user-provided German outline, maintain a dynamic chapter-based document structure, or help with bibliography, acronyms, appendix indexes, figures, tables, and code listings in German-language academic documents.
---

# Latex Blueprint

Install the bundled template into the target workspace before making broad structural changes. Keep the template layout unless the user explicitly requests a different document architecture.

Treat the user-provided outline as the source of truth for the main body. Do not force a fixed project-report structure. If the user already aligned the outline with another LLM, implement that agreed structure in LaTeX.

## Workflow

1. If the workspace does not already contain the template, run `scripts/install_template.sh <target-dir>`.
2. Read `<target-dir>/dokument.tex` first.
3. Update the metadata commands in `dokument.tex`.
4. Inspect the chapter `\input{...}` block in `dokument.tex` and align it with the user-provided outline.
5. Create, rename, remove, or reorder files in `kapitel/` so each top-level chapter of the agreed outline is represented cleanly.
6. Edit main content in `kapitel/`, supporting pages in `meta/`, and appendix material in `anhang/`.
7. Build with `scripts/build_document.sh <target-dir>`.
8. Clean auxiliary files with `scripts/clean_document.sh <target-dir>` when needed.

## Bundled Resources

- `assets/template/`: complete project scaffold to copy into a new or empty target directory.
- `references/vorgaben.md`: optional German outline patterns and rules for mapping an agreed outline into the template.
- `scripts/install_template.sh`: copies the bundled template into a target directory without overwriting existing files.
- `scripts/build_document.sh`: builds the document in a target directory.
- `scripts/clean_document.sh`: removes LaTeX auxiliary files in a target directory.

## Editing Rules

- Keep reusable formatting and package changes in `dokument.tex`.
- Keep the existing template architecture (`dokument.tex`, `kapitel/`, `meta/`, `anhang/`, `bib/`, `bilder/`) unless the user explicitly requests a different one.
- Keep chapter prose in `kapitel/` and appendix material in `anhang/`.
- Use the user-provided outline for chapter count, order, naming, and emphasis.
- Reflect the outline in the `\input{kapitel/...}` lines of `dokument.tex`; do not leave obsolete sample chapters wired in once the real structure is known.
- Prefer descriptive filenames derived from chapter titles when restructuring `kapitel/`, for example `kapitel/einleitung.tex` or `kapitel/methodik.tex`.
- Add bibliography entries to `bib/literatur.bib` instead of hardcoding source data in chapters.
- Use the existing acronym setup in `meta/abkuerzungen.tex` and `meta/abkuerzungsverzeichnis.tex`.
- Move large code listings, wide tables, and supplementary evidence into the appendix when that improves readability.
- Generate Mermaid code blocks directly in the relevant `.tex` chapter files when the user needs flowcharts, sequence diagrams, gantt charts, or other Mermaid-based documentation artifacts.
- Treat Mermaid in this template as documented source notation, usually via `lstlisting`, not as a native LaTeX renderer.
- If the diagram must also appear visually in the PDF, add a LaTeX-native representation alongside the Mermaid source, for example with TikZ or `pgfgantt`.
- Follow German-language academic conventions unless the user explicitly requests another language.
- For scientific prose (for example in seminar papers, bachelor projects, and bachelor theses), write in continuous prose by default; do not output bullet-point lists unless the user explicitly asks for list format.
- If the user has no outline yet, help formulate one first; only then translate it into the LaTeX structure.

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

- Use `references/vorgaben.md` when the user needs optional German structure patterns for Praxisberichte, Bachelorprojekte, or Bachelorthesen, or when you need rules for mapping an agreed outline into `kapitel/` files.
