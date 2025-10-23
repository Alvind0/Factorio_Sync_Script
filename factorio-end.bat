@echo off
cd %APPDATA%/Factorio

for /f "delims=" %%a in ('powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-Date -Format 'yyyy/MM/dd HH:mm'"') do set "DATETIME=%%a"

git add .
git commit -m "%DATETIME% sync"
git push
