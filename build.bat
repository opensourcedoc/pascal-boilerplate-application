@echo off
setlocal

where fpc >nul 2>nul || (
    echo No Free Pascal on the system >&2
    exit /b 1
)

set "CWD=%~dp0"

call "%CWD%setting.bat"

if not exist "%BIN_DIR%" mkdir "%BIN_DIR%"
if not exist "%OBJ_DIR%" mkdir "%OBJ_DIR%"

fpc -O3 "-o%EXECUTABLE%" "-Fu%SRC_DIR%" "-FU%OBJ_DIR%" "-FE%BIN_DIR%" "%SRC_DIR%%ENTRY%"

endlocal