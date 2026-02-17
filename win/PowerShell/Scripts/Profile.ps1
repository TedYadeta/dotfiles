# Profile.ps1 - For PowerShell 5.1
# Reminder that this should be used sparingly,
# Not for scripts!

# I) Aliases for Built-In Commands
# ================================

Set-Alias -Name clsdns -Value Clear-DnsClientCache

Set-Alias -Name gacl -Value Get-Acl

Set-Alias -Name gd -Value Get-Date

Set-Alias -Name gexepol -Value Get-ExecutionPolicy

Set-Alias -Name gh -Value Get-Help

Set-Alias -Name gnic -Value Get-NetIPConfiguration

Set-Alias -Name grep -Value Select-String

Set-Alias -Name lg -Value logoff

Set-Alias -Name regdns -Value Register-DnsClient

Set-Alias -Name rstrt -Value Restart-Computer

Set-Alias -Name ssm -Value Set-StrictMode

Set-Alias -Name stop -Value Stop-Computer

Set-Alias -Name time -Value Measure-Command 

Set-Alias -Name uh -Value Update-Help

Set-Alias -Name wrh -Value Write-Host

Set-Alias -Name wt -Value wt
# Note, technically this already exists by default on Windows 11 BUT this allows it to show up after running Get-Alias

Set-Alias -Name wo -Value Write-Output

Set-Alias -Name cph -Value Convert-Path

Set-Alias -Name jph -Value Join-Path

Set-Alias -Name rph -Value Resolve-Path

Set-Alias -Name sph -Value Split-Path

Set-Alias -Name tph -Value Test-Path


# II) Functions and Associated Aliases for Custom Commands
# ========================================================

# II.a) PowerShell-Specific Utilities
# -----------------------------------
#
# For General Use and Script Execution

function sexepolrs {
    Set-ExecutionPolicy RemoteSigned
}

function sexepolr {
    Set-ExecutionPolicy Restricted
}

function Kill-PSSession {
    Get-PSSession | Remove-PSSession
}

function Start-GodMode {
    New-Item -Path 'C:\Users\$env:USERNAME\lang\GodMode' -ItemType Directory -Name "GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}" -Force
    }
# Note: This static path is established in win-scaffold.ps1. Failure to run win-scaffold.ps1 will cause Start-GodMode and Stop-GodMode to now work.

Set-Alias -Name stgm -Value Start-GodMode

function Stop-GodMode {
    Remove-Item -Path 'C:\Users\$env:USERNAME\lang\GodMode\*' -Force
}

Set-Alias -Name spgm -Value Stop-GodMode


# III) Aliases and Functions for GUI Programs
# ===========================================
#
# III.a) Aliases and Functions for Built-In Applications (Win11)
# --------------------------------------------------------------


# Group Policy Editor

function Start-GPEdit {
    Start-Process -FilePath C:\Windows\System32\gpedit.msc
}

Set-Alias -Name sgpe -Value Start-GPEdit


# Server Manager

function Start-ServMan {
    Start-Process -FilePath C:\Windows\System32\ServerManager.exe
}

Set-Alias -Name ssvm -Value Start-ServMan


# III.b) Aliases and Functions relating to Hyper-V
# ------------------------------------------------

function Start-HVMan {
    Start-Process -FilePath C:\Windows\System32\virtmgmt.msc
}

Set-Alias -Name shvm -Value Start-HVMan

function Start-HVQC {
    Start-Process -FilePath 'C:\Program Files\Hyper-V\VMCreate.exe'
}

Set-Alias -Name shvqc -Value Start-HVQC



# III.c) PowerShell Shortcuts to Specific Settings
# ================================================

# Future Idea: See if you can get each version sub-section
# of Windows Settings to launch as well.

# For example, the Display Section in System can be launched from dpiscaling.exe

