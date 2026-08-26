@echo off
REM Deploy the 250th "Coming soon" teaser changes to GitHub Pages.
REM Commits ONLY the 6 content files; leaves .github/workflows/* untouched.
cd /d "%~dp0"

echo Removing any stale git lock...
if exist ".git\index.lock" del /f ".git\index.lock"

echo Staging content files...
git add index.html order-confirmation.html products\afterburner.html products\dawns-light.html products\home-of-the-brave.html

echo Committing...
git commit -m "250th Collection: convert to no-date 'Coming soon' teaser; remove July 1 ship-date/preorder copy for core-line go-live"

echo Pushing to GitHub (Pages will auto-deploy)...
git push

echo.
echo Done. If you saw no errors above, the live site will update in a minute or two.
pause
