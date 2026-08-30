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

REM ---- stamp push-test page with current time ----
for /f %%t in ('powershell -NoProfile -Command "Get-Date -Format 'yyyy-MM-dd HH:mm:ss'"') do set "STAMP=%%t"
if not defined STAMP (
    echo [0/7] warning: could not get current time - skip stamping
    goto :main
)
if exist docs\introduction\push-test.md (
    powershell -NoProfile -Command "$c=[IO.File]::ReadAllText('docs\introduction\push-test.md',[Text.Encoding]::UTF8);if($c -match '\*\*\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}\*\*'){$c=[regex]::Replace($c,'\*\*\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}\*\*','**%STAMP%**');[IO.File]::WriteAllText('docs\introduction\push-test.md',$c,(New-Object Text.UTF8Encoding($false)))}"
    echo [0/7] push-test timestamp updated
) else (
    echo [0/7] push-test.md not found - skip stamping
)

:main
REM ---- ensure git repo exists ----
if not exist .git (
    echo [1/7] Initializing git repo...
    git init -b %BRANCH% 2>nul
    if errorlevel 1 git init
) else (
    echo [1/7] Git repo OK
)

REM ---- local identity (works on any PC, even without global config) ----
echo [2/7] Setting git identity...
git config user.name "%USERNAME%"
git config user.email "%EMAIL%"

REM ---- remote ----
echo [3/7] Checking remote...
git remote get-url origin >nul 2>&1
if errorlevel 1 (
    git remote add origin "%REMOTE%"
) else (
    git remote set-url origin "%REMOTE%"
)

REM ---- commit changes ----
echo [4/7] Staging changes...
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
REM usage: upd.bat   normal push    |   upd.bat force   force push history rewrite
set "PUSHF="
if /i "%~1"=="force" set "PUSHF=--force"
echo [5/7] Pushing to %REMOTE% ...
git push -u origin %BRANCH% %PUSHF%
if errorlevel 1 goto :pushfail

echo [6/7] Done.
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
