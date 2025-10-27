@echo off
cd "$env:appdata/Facorio"
git pull

start "" /wait "C:\Games\Factorio\bin\x64\factorio.exe"

cd "$env:appdata/Facorio"
for /f "delims=" %%a in ('powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-Date -Format 'yyyy/MM/dd HH:mm'"') do set "DATETIME=%%a"

git add .
git commit -m "%DATETIME% sync" && git push