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