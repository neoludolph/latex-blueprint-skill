# Hinweise zur projektspezifischen Gliederung

Diese Datei liefert Orientierung fuer die Struktur einer deutschsprachigen wissenschaftlichen Arbeit im Template. Die konkrete Gliederung wird nicht durch das Template vorgegeben, sondern durch Sie oder eine vorgeschaltete LLM festgelegt.

## So verwenden Sie das Template

1. Legen Sie zuerst die Gliederung Ihrer Arbeit fest.
2. Uebertragen Sie jedes Hauptkapitel in eine eigene Datei in `kapitel/`.
3. Pflegen Sie die Reihenfolge der Kapitel ueber die `\input{kapitel/...}`-Zeilen in `dokument.tex`.
4. Lassen Sie Meta-Dateien und Anhang in der vorhandenen Template-Struktur.

## Optionale Strukturmuster

### Praxis- oder Projektbericht

- Einleitung / Projektkontext
- Vorgehensweise und Methodik
- Konzeption
- Implementierung
- Qualitaetssicherung
- Fazit und Ausblick

### Bachelorprojekt

- Einleitung
- Grundlagen
- Analyse oder Anforderungen
- Konzeption
- Umsetzung
- Evaluation
- Fazit und Ausblick

### Bachelorthesis

- Einleitung
- Stand der Forschung oder theoretische Grundlagen
- Methodik
- Analyse, Konzeption oder Entwicklung
- Diskussion oder Evaluation
- Fazit und Ausblick

## Zusatzteile ausserhalb der normalen Kapitelstruktur

- `meta/`: Titelblatt, Kurzfassung, Abkuerzungen, Erklaerungen
- `anhang/`: Verzeichnisse, grosse Tabellen, grosse Abbildungen, Code, Zusatzmaterial
- `bib/`: Literaturdatenbank
