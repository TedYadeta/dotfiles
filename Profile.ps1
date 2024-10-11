# Profile.ps1 - For PowerShell 5.1
# Reminder that this should be used sparingly,
# Not for scripts!


# I) Aliases for Built-In Commands
# ================================

Set-Alias -Name gd -Value Get-Date

Set-Alias -Name gexepol -Value Get-ExecutionPolicy

Set-Alias -Name gh -Value Get-Help

Set-Alias -Name gnic -Value Get-NetIPConfiguration

Set-Alias -Name uh -Value Update-Help

Set-Alias -Name stop -Value Stop-Computer

Set-Alias -Name wrh -Value Write-Host

Set-Alias -Name lg -Value logoff


# II) Functions and Associated Aliases for Custom Commands
# ========================================================

# II.a) PowerShell-Specific Utilities
# -----------------------------------
#
# For General Use and Script Execution

function Get-PSVersion {
    $PSVersionTable.PSVersion
}

Set-Alias gpsver -Value Get-PSVersion

function sexepolrs {
    Set-ExecutionPolicy RemoteSigned
}

function sexepolr {
    Set-ExecutionPolicy Restricted
}

# II.b) System Information
# ------------------------

function Get-CPU {
    Get-ComputerInfo -Property CsProcessors
}

Set-Alias gcpu -Value Get-CPU

function Get-Uptime {
    Get-ComputerInfo -Property OsUptime
}

Set-Alias gup -Value Get-Uptime

function Get-WindowsVersion {
    Get-ComputerInfo -Property OsVersion
}

Set-Alias gwinver -Value Get-WindowsVersion

# III) Aliases and Functions for GUI Programs
# ===========================================

# Command Prompt

function Get-CMD {
    Start-Process -FilePath C:\Windows\System32\cmd.exe
}

Set-Alias -Name gcmd -Value Get-CMD

# Computer Management

function Get-CompMgmt {
    Start-Process -FilePath C:\Windows\System32\compmgmt.msc
}

Set-Alias -Name gcmg -Value Get-CompMgmt

# Control Panel

function Get-CPanel {
    Start-Process -FilePath C:\Windows\System32\control.exe
}

Set-Alias -Name gcp -Value Get-CPanel

# Device Manager

function Get-DevMgr {
    Start-Process -FilePath C:\Windows\System32\devmgmt.msc
}

Set-Alias -Name gdm -Value Get-DevMgr 

# Event Viewer

function Get-EventVwr {
    Start-Process -FilePath C:\Windows\System32\eventvwr.exe
}

Set-Alias -Name gev -Value Get-EventVwr

# Group Policy Editor

function Get-GPEdit {
    Start-Process -FilePath C:\Windows\System32\gpedit.msc
}

Set-Alias -Name ggpe -Value Get-GPEdit

# Registry Editor

function Get-RegEdit {
    Start-Process -FilePath C:\Windows\System32\regedt32.exe
}

Set-Alias -Name gre -Value Get-RegEdit

