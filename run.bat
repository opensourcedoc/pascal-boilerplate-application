@echo off

echo ======================================================================
echo [WARNING] This .bat script is DEPRECATED and no longer maintained.
echo Please run the POSIX sh script in WSL or GNU/Linux instead.
echo ======================================================================

setlocal

set "CWD=%~dp0"
set "SETTING=%CWD%setting.bat"

if not exist "%SETTING%" (
    echo Error: Unable to load the repository setting: %SETTING% >&2
    exit /b 1
)

call "%SETTING%"

if not exist "%BIN_DIR%%EXECUTABLE%" (
    echo %EXECUTABLE% is not compiled >&2
    exit /b 1
)

"%BIN_DIR%%EXECUTABLE%" %*

endlocal