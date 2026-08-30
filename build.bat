@echo off
cd /d "%~dp0"

echo Building...
call mkdocs build
if %errorlevel% neq 0 (
    echo.
    echo Build failed!
    pause
    exit /b 1
)

echo.
echo Build successful! Starting server...
start http://127.0.0.1:8000
echo Server running at http://127.0.0.1:8000
echo Close this window or press Ctrl+C to stop.
python -m http.server --directory site 8000
pause
