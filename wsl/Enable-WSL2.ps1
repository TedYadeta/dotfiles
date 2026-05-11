#Requires -RunAsAdministrator

Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform -All -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux -All -NoRestart

Write-Host "WSL2 is enabled. Please restart to enable it." -ForegroundColor Green

$allowRestart = Read-Host -Prompt "Would you like to restart now [Y\N]"

switch ($allowRestart) {
    "Y" { Restart-Computer }
    "N" { Write-Host "Please restart at your own convenience" }
    default { Write-Host "Choice delayed. Please restart at your earliest convenience."}
}