@echo off
setlocal

set "CWD=%~dp0"

call "%CWD%setting.bat"

if not exist "%BIN_DIR%%EXECUTABLE%" (
    echo %EXECUTABLE% not compiled >&2
    exit /b 1
)

"%BIN_DIR%%EXECUTABLE%"