@echo off
setlocal enableDelayedExpansion
set /p "string1=Vavedi koda, koito se promenq: "
set /p "string2=Molq, vavedi noviq kod: "

call :treeProcess
goto :eof

:treeProcess
for %%F in (*%string1%*.*) do (
  set "filename=%%F"
  ren "!filename!" "!filename:%string1%=%string2%!"
)

for /D %%d in (*) do (
    cd %%d
    call :treeProcess
    cd ..
)
exit /b