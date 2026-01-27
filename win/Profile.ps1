# Profile.ps1 - For PowerShell 5.1
# Reminder that this should be used sparingly,
# Not for scripts!

# 0) Aliases for the Built-In Legacy Compilers of Windows
# =======================================================

function Compile-ASPNET {
    Start-Process -FilePath C:\Windows\Microsoft.NET\Framework64\v4.0.30319\aspnet_compiler.exe
}

function Compile-CSharp {
    Start-Process -FilePath C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc.exe
}

function Compile-ILAssembly {
    Start-Process -FilePath C:\Windows\Microsoft.NET\Framework64\v4.0.30319\ilasm.exe
}

function Compile-JScript {
    Start-Process -FilePath C:\Windows\Microsoft.NET\Framework64\v4.0.30319\jsc.exe
}

function Compile-MSBuild {
    Start-Process -FilePath C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSBuild.exe
}

function Compile-VisualBasic {
    Start-Process -FilePath C:\Windows\Microsoft.NET\Framework64\v4.0.30319\vbc.exe
}

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
#
# III.a) Aliases and Functions for Built-In Applications (Win10)
# --------------------------------------------------------------

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

# Drive Optimizer

function Start-Optimizer {
    Start-Process -FilePath C:\Windows\System32\dfrgui.exe
}

Set-Alias -Name sopt -Value Start-Optimizer

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

function Start-WbemTest {
    Start-Process -FilePath C:\Windows\System32\wbem\wbemtest.exe
}

# Note to self, in a future Section, look into WQL to have some default WQL queries on standby.

Set-Alias -Name swbem -Value Start-WbemTest

# III.b) Aliases and Functions Relating to Active Directory
# ---------------------------------------------------------
#
# (Note: Obviously, must have AD-related Applications open,
# otherwise, what's the point?

# Active Directory Administrative Center

function Start-ADAC {
    Start-Process -FilePath C:\Windows\System32\dsac.exe
}

Set-Alias -Name sadac -Value Start-ADAC

# Active Directory Domains and Trusts

function Start-ADDT {
    Start-Process -FilePath C:\Windows\System32\domain.msc
}

Set-Alias -Name saddt -Value Start-ADDT

# Active Directory Sites and Services

function Start-ADSS {
    Start-Process -FilePath C:\Windows\System32\dssite.msc
}

Set-Alias -Name sadss -Value Start-ADSS 

# Active Directory Users and Groups

function Start-ADUG {
    Start-Process -FilePath C:\Windows\System32\dsa.msc
}

Set-Alias -Name sadug -Value Start-ADUG

function ldapquery {
    Get-ADUser -LDAPFilter
}


# III.c) Aliases and Functions relating to Hyper-V
# ------------------------------------------------

function Start-HVMan {
    Start-Process -FilePath C:\Windows\System32\virtmgmt.msc
}

Set-Alias -Name shvm -Value Start-HVMan

function Start-HVQC {
    Start-Process -FilePath 'C:\Program Files\Hyper-V\VMCreate.exe'
}

Set-Alias -Name shvqc -Value Start-HVQC



# III.d) PowerShell Shortcuts to Specific Settings
# ================================================

# Future Idea: See if you can get each version sub-section
# of Windows Settings to launch as well.

# For example, the Display Section in System can be launched from dpiscaling.exe








