@echo off
REM === Schimbă numele fișierului notebook mai jos dacă este altul ===
SET notebook=Analiza_interactiva.ipynb
SET output=raport_final.html

echo.
echo === Conversie notebook în HTML fără cod... ===
jupyter nbconvert %notebook% --to html --no-input --template lab --output %output%
echo === Gata! ===

REM === Deschide automat fișierul HTML în browser ===
start %output%