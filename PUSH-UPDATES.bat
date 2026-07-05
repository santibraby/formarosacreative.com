@echo off
rem ============================================================
rem  PUSH-UPDATES.bat - backs up this folder to GitHub
rem  Repo: https://github.com/santibraby/formarosacreative.com
rem  Double-click to run. First run: sets up git + asks you to
rem  sign in to GitHub in your browser (one time only).
rem ============================================================

cd /d "%~dp0"

where git >nul 2>nul
if errorlevel 1 (
    echo Git is not installed. Opening the download page...
    echo Install "Git for Windows" with default settings, then run this again.
    start https://git-scm.com/download/win
    pause
    exit /b 1
)

if not exist ".git" (
    echo First run - setting up the repository...
    git init -b main
    git remote add origin https://github.com/santibraby/formarosacreative.com.git
    git config user.name "santibraby"
    git config user.email "santiagobrabybrown@gmail.com"
)

echo.
echo Adding changes...
git add -A

git commit -m "Update %date% %time%"
if errorlevel 1 (
    echo.
    echo Nothing new to back up - everything is already saved.
    pause
    exit /b 0
)

echo.
echo Pushing to GitHub...
git push -u origin main
if errorlevel 1 (
    echo.
    echo Push failed. If a browser window opened, sign in to GitHub
    echo and run this file again.
    pause
    exit /b 1
)

echo.
echo Done! Backed up to github.com/santibraby/formarosacreative.com
pause
