#Requires -RunAsAdministrator
<#
 Make-Task-Update-Help.ps1 - in which we automate the PowerShell Help Pages being updated 
 WARNING! Does require you to run win-scaffold.ps1 first to establish file structure
 WARNING! This will need to run as Administrator to do a full upgrade!
 Proceed at your own risk!
#>

$user=$env:USERPROFILE

$isUpdateHelpScriptPreset = Test-Path -Path "$user\lang\PowerShell\Scripts\Update-Help.ps1"

if ($isUpdateHelpScriptPreset -eq $False) {
    Write-Host -ForegroundColor Red "Warning! Update-Help.ps1 not found! Please check directory!"
    exit $1
 } else {

$Action = New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "-NoProfile -NoLogo NonInteractive" '-File "$user\lang\PowerShell\Scripts\Update-Help.ps1"'
$Trigger = New-ScheduledTaskTrigger -Weekly -WeeksInterval 2 -DaysOfWeek Tuesday -At '9:30 AM'
$Principal = New-ScheduledTaskPrincipal -UserID 'NT AUTHORITY\SYSTEM' -RunLevel Highest
$Settings = New-ScheduledTaskSettingsSet -RunOnlyIfNetworkAvailable -WakeToRun
Register-ScheduledTask -Action $Action -Principal $Principal -Trigger $Trigger -Settings $Settings -TaskName 'Update-Help-Weekly-Tuesday-AM' -Description 'Update the PowerShell Help Pages right after Patch Tuesday'

Write-Host -ForegroundColor Green "Task created. Update-Help will be run every second Tuesday at 9:30 AM or at user-specified time."
}
