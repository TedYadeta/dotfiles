@echo off

dism.exe /online /disable-feature /featurename:VirtualMachinePlatform /norestart

dism.exe /online /disable-feature /featurename:Microsoft-Windows-Subsystem-Linux /norestart

echo.
echo Please restart at your earliest convenience to fully disable WSL2.
pause