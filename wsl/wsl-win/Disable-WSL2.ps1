#Requires -RunAsAdministrator

Disable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform -NoRestart
Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux -NoRestart

Write-Host "WSL2 is disabled. Please restart to disable it." -ForegroundColor Red

$allowRestart = Read-Host -Prompt "Would you like to restart now [Y\N]"

switch ($allowRestart) {
    "Y" { Restart-Computer -Force }
    "N" { Write-Host "Please restart at your own convenience" }
    default { Write-Host "Choice delayed. Please restart at your earliest convenience."}
}