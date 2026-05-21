@echo off
echo ===================================================
echo Pushing Junu Tora Homestay Website to GitHub
echo ===================================================
echo.

:: Initialize Git if not already done
if not exist .git (
    echo Initializing local Git repository...
    git init
)

:: Add all files
echo Adding files to staging...
git add .

:: Commit
echo Committing changes...
git commit -m "Initialize project and add responsive mobile design"

:: Set branch to main
echo Setting branch to main...
git branch -M main

:: Set remote origin
echo Configuring remote origin...
git remote add origin https://github.com/Quickaxis/juunotorahomestay.git >nul 2>&1
if %errorlevel% neq 0 (
    echo Remote 'origin' already exists. Updating remote URL...
    git remote set-url origin https://github.com/Quickaxis/juunotorahomestay.git
)

:: Push to GitHub
echo Pushing to GitHub main branch...
git push -u origin main

echo.
echo ===================================================
echo Push complete! Press any key to exit.
echo ===================================================
pause
