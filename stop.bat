@echo off
cd /d "%~dp0"
echo Stopping server on port 8000...
for /f "tokens=5" %%a in ('netstat -ano ^| findstr :8000') do (
    taskkill /f /pid %%a 2>nul
)
echo Done.
pause
