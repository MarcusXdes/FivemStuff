@echo off
color 0f
mode 102,26
title FiveM manifest dumper
cls
set /p cfx="[?] cfx.re address: "
set cfx=%cfx:~12%
echo [!] starting...
curl -s https://servers-frontend.fivem.net/api/servers/single/%cfx% >>%temp%\tmp.json
powershell "Get-Content %temp%\tmp.json | ConvertFrom-Json | ConvertTo-Json | Out-File -FilePath dump_%cfx%.json"
del /q /f %temp%\tmp.json
for /f "tokens=*" %%a in ('type "dump_%cfx%.json"') do (
ping localhost -n 1 >nul
echo [dumped] %%a)
echo [!] done, closing in 3 seconds...
ping -n 3 localhost >nul
exit