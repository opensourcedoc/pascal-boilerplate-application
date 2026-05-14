@echo off

set ENTRY=Main.lpr
set PROGRAM=cli
set EXECUTABLE=%PROGRAM%.exe

set "CWD=%~dp0"
if "%CWD:~-1%"=="\" set "CWD=%CWD:~0,-1%"

set "SRC_DIR=%CWD%\src\"
set "BIN_DIR=%CWD%\bin\"
set "OBJ_DIR=%CWD%\obj\"
