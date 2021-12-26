@echo off
set EXE=VALORANT.exe
net start vgc

SetLocal EnableDelayedExpansion
set content=
for /F "delims=" %%i in (settings.cfg) do set content=%%i
echo Aguardando VALORANT Abrir
start "" %content%
EndLocal

:CHECKABERTO
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto ABERTO

:GOTOSO
goto CHECKABERTO

:ABERTO
echo VALORANT Aberto

:CHECK
echo CHECANDO VALORANT
TIMEOUT /T 60 /NOBREAK
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto CHECK

:FIN
echo VALORANT Fechado
echo Parando Vanguard vgc
TIMEOUT /T 5 /NOBREAK
net stop vgc
exit


