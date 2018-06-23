# StylesAndMore
Allgemeine TeX-Macros, Style files und class files für meine LaTeX Projekte

Die verschiedenen Dateien sind aus Buchprojekten mit dem Hanser- und Springer-Verlag und bei der Erstellung von Folien und Texten für 
Lehrveranstaltungen an der Hochschule Kaiserslautern entstanden.

## Installation und Verwendung
Diese Dateien kann man lokal verwenden, aber viel sinnvoller ist es, sie im Verzeichnis texmf-local zentral abzuspeichern.

# PDF Support
Lm pdflatex zu verwenden wurde eine neue Version der sty-Files aus den Buchprojekten begonnen. Verwendet man statt mb.sty die neue Datei mbPDF.sty, dann werden statt der Pakete epic und eepic die Pakete pict2e und eps2fig geladen. Mit dem letzten Paket ist es auch möglich, legacy-Projekte zu compilieren. Dabei wird on-the-fly aus einem eps-File ein PDF gemacht. Besser ist es natürlich, die alten eps-Files mit Hilfe von GhostView in PDF zu konvertieren.
