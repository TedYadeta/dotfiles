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

function Get-GPU {
    Get-CimInstance -ClassName Win32_DisplayControllerConfiguration | Select-String -Pattern 'Name'
}

Set-Alias -Name ggpu -Value Get-GPU

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

function Start-CMD {
    Start-Process -FilePath C:\Windows\System32\cmd.exe
}

Set-Alias -Name scmd -Value Start-CMD

# Computer Management

function Start-CompMgmt {
    Start-Process -FilePath C:\Windows\System32\compmgmt.msc
}

Set-Alias -Name scmg -Value Start-CompMgmt

# Control Panel

function Start-CPanel {
    Start-Process -FilePath C:\Windows\System32\control.exe
}

Set-Alias -Name scpl -Value Start-CPanel

# Device Manager

function Start-DevMgr {
    Start-Process -FilePath C:\Windows\System32\devmgmt.msc
}

Set-Alias -Name sdvm -Value Start-DevMgr 

# Disk Defrag

function Start-Defrag {
    Start-Process -FilePath C:\Windows\System32\dfrgui.exe
}

Set-Alias -Name sdfg -Value Start-Defrag

# Disk Management

function Start-DiskMgmt {
    Start-Process -FilePath C:\Windows\System32\diskmgmt.msc
}

Set-Alias -Name sdkm -Value Start-DiskMgmt

# Event Viewer

function Start-EventVwr {
    Start-Process -FilePath C:\Windows\System32\eventvwr.exe
}

Set-Alias -Name sevt -Value Start-EventVwr

# Group Policy Editor

function Start-GPEdit {
    Start-Process -FilePath C:\Windows\System32\gpedit.msc
}

Set-Alias -Name sgpe -Value Start-GPEdit

# Performance Monitor

function Start-PerfMon {
    Start-Process -FilePath C:\Windows\System32\perfmon.exe
}

Set-Alias -Name spfm -Value Start-PerfMon

# Registry Editor

function Start-RegEdit {
    Start-Process -FilePath C:\Windows\System32\regedt32.exe
}

Set-Alias -Name sreg -Value Start-RegEdit

# Resource Monitor

function Start-ResMon {
    Start-Process -FilePath C:\Windows\System32\resmon.exe
}

Set-Alias -Name srsm -Value Start-ResMon

# Server Manager

function Start-ServMan {
    Start-Process -FilePath C:\Windows\System32\ServerManager.exe
}

Set-Alias -Name ssvm -Value Start-ServMan

# Task Manager

function Start-TaskMan {
    Start-Process -FilePath C:\Windows\System32\taskmgr.exe
}

Set-Alias -Name stkm -Value Start-TaskMan

# Task Scheduler

function Start-TaskSched {
    Start-Process -FilePath C:\Windows\System32\taskschd.msc
}

Set-Alias -Name stks -Value Start-TaskSched
