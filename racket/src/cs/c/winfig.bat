@echo off
setlocal

set SRCDIR=%~dp0

copy /y "%SRCDIR%\buildmain.zuo" main.zuo > NUL
echo srcdir=%SRCDIR% > Mf-config
echo CFLAGS=/DWIN32 /Ox >> Mf-config

cl.exe /nologo /Fe: winfig.exe "%SRCDIR%\..\..\worksp\winfig.c"
winfig.exe >> Mf-config
