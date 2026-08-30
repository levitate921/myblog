@echo off
setlocal
cd /d "%~dp0"

echo ==============================
echo   myblog upd - push to GitHub
echo ==============================

REM ---- load upd.cfg ----
set "REMOTE="
set "BRANCH="
set "USERNAME="
set "EMAIL="
set "PAGES="
if exist upd.cfg (
    for /f "usebackq tokens=1,* delims==" %%a in ("upd.cfg") do (
        if /i "%%a"=="REMOTE" set "REMOTE=%%b"
        if /i "%%a"=="BRANCH" set "BRANCH=%%b"
        if /i "%%a"=="USERNAME" set "USERNAME=%%b"
        if /i "%%a"=="EMAIL" set "EMAIL=%%b"
        if /i "%%a"=="PAGES" set "PAGES=%%b"
    )
)
if not defined REMOTE goto :firstrun

:main
REM ---- ensure git repo exists ----
if not exist .git (
    echo [1/6] Initializing git repo...
    git init -b %BRANCH% 2>nul
    if errorlevel 1 git init
) else (
    echo [1/6] Git repo OK
)

REM ---- local identity (works on any PC, even without global config) ----
echo [2/6] Setting git identity...
git config user.name "%USERNAME%"
git config user.email "%EMAIL%"

REM ---- remote ----
echo [3/6] Checking remote...
git remote get-url origin >nul 2>&1
if errorlevel 1 (
    git remote add origin "%REMOTE%"
) else (
    git remote set-url origin "%REMOTE%"
)

REM ---- commit changes ----
echo [4/6] Staging changes...
git add -A
git diff --cached --quiet
if errorlevel 1 (
    git commit -m "update"
    echo        committed.
) else (
    echo        nothing new to commit.
)

REM ---- ensure branch name ----
git branch -M %BRANCH% 2>nul

REM ---- push ----
echo [5/6] Pushing to %REMOTE% ...
git push -u origin %BRANCH%
if errorlevel 1 goto :pushfail

echo [6/6] Done.
echo.
echo [OK] Pushed to GitHub. Actions will build and deploy automatically.
echo  Actions       : %REMOTE%/actions
echo  Site          : %PAGES%
echo  First time?   : repo Settings - Pages - Source = "GitHub Actions"
pause
exit /b 0

:pushfail
echo.
echo [FAIL] Push failed. Common fixes:
echo   1. Create the repo on GitHub first: https://github.com/new
echo   2. First time: a GitHub login window will pop up - complete it.
echo   3. Check the URL in upd.cfg
echo.
pause
exit /b 1

:firstrun
echo No upd.cfg found - one-time setup.
for /f "delims=" %%g in ('git config --get user.name 2^>nul') do set "USERNAME=%%g"
for /f "delims=" %%g in ('git config --get user.email 2^>nul') do set "EMAIL=%%g"
if not defined USERNAME set /p USERNAME=Enter git user name : 
if not defined EMAIL    set /p EMAIL=Enter git email     : 
if not defined BRANCH   set "BRANCH=main"
set /p REMOTE=Enter remote URL (https://github.com/you/REPO.git) : 
set /p PAGES=Enter Pages URL (https://you.github.io/REPO, optional) : 
if not defined PAGES set "PAGES=(see repo Settings - Pages after first push)"

(
echo REMOTE=%REMOTE%
echo BRANCH=%BRANCH%
echo USERNAME=%USERNAME%
echo EMAIL=%EMAIL%
echo PAGES=%PAGES%
) > upd.cfg

echo upd.cfg created. `%REMOTE%
goto :main
