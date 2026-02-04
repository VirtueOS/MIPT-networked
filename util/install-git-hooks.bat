@echo off

set "PROJECT_PATH=%~dp0..\"

xcopy /y /f %PROJECT_PATH%\util\git-hooks\*.? %PROJECT_PATH%\.git\hooks
if %errorlevel% neq 0 (
    echo [ERROR] Failed to copy hooks.
    pause
    goto :eof
)

echo Hooks copied!
pause