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

