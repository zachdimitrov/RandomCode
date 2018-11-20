@echo off
setlocal enableDelayedExpansion
set /p "string1=Proekt [CLI-NUMB Name]: "

md "%string1%"
cd %string1%
md ArchiCAD
md PDF
md 3DS
md CAD
md MAX