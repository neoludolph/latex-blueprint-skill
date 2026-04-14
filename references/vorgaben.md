# Strukturhinweise

Nutze diese Referenz, wenn eine deutschsprachige wissenschaftliche Arbeit in das vorhandene LaTeX-Template uebertragen werden soll.

## Grundregel

- Die vom User oder einer vorgeschalteten LLM festgelegte Gliederung ist verbindlich.
- Diese Referenz liefert optionale Muster und Mapping-Regeln, aber keine Pflichtstruktur.
- Uebersetze die abgestimmte Gliederung in `kapitel/`-Dateien und die passenden `\input{kapitel/...}`-Zeilen in `dokument.tex`.

## Mapping-Regeln fuer die Gliederung

- Lege pro Hauptkapitel in der Regel eine eigene Datei in `kapitel/` an.
- Waehle sprechende Dateinamen aus den Kapitelbezeichnungen, zum Beispiel `einleitung.tex`, `stand-der-technik.tex`, `methodik.tex`, `fazit.tex`.
- Halte Vorspann und Verzeichnisse weiter in `meta/` beziehungsweise `anhang/`; diese Elemente gehoeren nicht in die normale Kapitelreihenfolge.
- Belasse die Template-Architektur insgesamt unveraendert, auch wenn die inhaltliche Gliederung projektspezifisch ist.
- Entferne oder ersetze Beispielkapitel, sobald die echte Struktur feststeht.
- Wenn Mermaid inhaltlich sinnvoll ist, schreibe den Mermaid-Quelltext in die passende Kapiteldatei, typischerweise als `lstlisting` direkt bei der fachlichen Erlaeuterung.
- Wenn ein Diagramm im PDF sichtbar sein soll, ergaenze zum Mermaid-Quelltext eine LaTeX-native Darstellung statt auf ein direktes Mermaid-Rendering in LaTeX zu vertrauen.

## Optionale Strukturmuster

### Praxis- oder Projektbericht

- `Einleitung / Projektkontext`: Thema, Ausgangssituation, Problemstellung, Ziel, Abgrenzung.
- `Vorgehensweise und Methodik`: Vorgehensmodell, Phasen, Werkzeuge, Zeitplan, Rollen.
- `Konzeption`: Architektur, Technologieentscheidungen, Datenfluesse, Detailkonzepte.
- `Implementierung`: Umsetzung, Kernkomponenten, Herausforderungen, Loesungen.
- `Qualitaetssicherung`: Teststrategie, Testfaelle, Ergebnisse, Bewertung.
- `Fazit und Ausblick`: Zusammenfassung, Soll/Ist-Vergleich, Erkenntnisse, naechste Schritte.

### Bachelorprojekt

- `Einleitung`: Motivation, Zielsetzung, Forschungs- oder Entwicklungsfrage, Aufbau der Arbeit.
- `Grundlagen`: Fachliche und technische Grundlagen, Begriffsklaerungen, relevanter Kontext.
- `Anforderungen oder Analyse`: Problemraum, Stakeholder, Randbedingungen, Anforderungen.
- `Konzeption`: Architektur, Entwurfsentscheidungen, Alternativen, Begruendungen.
- `Umsetzung`: Implementierung oder Realisierung mit Fokus auf den Kernbeitraegen.
- `Evaluation`: Tests, Validierung, Nutzwert, kritische Reflexion.
- `Fazit und Ausblick`: Ergebnisse, Grenzen, Weiterentwicklung.

### Bachelorthesis

- `Einleitung`: Motivation, Problemstellung, Zielsetzung, Forschungsfrage, Aufbau.
- `Stand der Forschung` oder `Theoretische Grundlagen`: relevante Literatur, Modelle, Begriffe.
- `Methodik`: Untersuchungsdesign, Datengrundlage, Vorgehen, Guetekriterien.
- `Analyse`, `Konzeption` oder `Entwicklung`: Hauptteil passend zur Fragestellung.
- `Evaluation` oder `Diskussion`: Einordnung, Interpretation, Grenzen, Vergleich mit Erwartung oder Literatur.
- `Fazit und Ausblick`: Beantwortung der Fragestellung, wichtigste Erkenntnisse, weitere Forschung.

## Wiederkehrende Zusatzteile

- `Kurzfassung/Abstract`: in `meta/`, nicht als normales Kapitel.
- `Abkuerzungsverzeichnis`: in `meta/`.
- `Anhang`: in `anhang/`, zum Beispiel fuer grosse Tabellen, Abbildungen, Messwerte oder Code.
- `Literaturverzeichnis`, `Abbildungsverzeichnis`, `Tabellenverzeichnis`, `Codebeispielverzeichnis`: ueber die vorbereiteten Anhangsdateien einbinden.
