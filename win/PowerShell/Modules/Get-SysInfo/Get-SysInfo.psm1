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