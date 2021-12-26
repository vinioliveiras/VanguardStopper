@echo off
net start vgc
if ERRORLEVEL 1 goto error
exit
:error
echo Parando Vanguard Service
net stop vgc
