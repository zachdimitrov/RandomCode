@echo off
setlocal enableDelayedExpansion
set /p "string1=Vavedi koda, koito se promenq: "
set /p "string2=Molq, vavedi noviq kod: "
for %%F in (*%string1%*.*) do (
  set "filename=%%F"
  ren "!filename!" "!filename:%string1%=%string2%!"
)
