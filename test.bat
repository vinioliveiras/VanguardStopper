@echo off
SetLocal EnableDelayedExpansion
set content=
for /F "delims=" %%i in (settings.cfg) do set content=%%i
start "" %content%
pause
EndLocal