# PowerShell 5.1 Profile.ps1
# Messy - need to organize first by Aliases, and then Functions.
 
 Set-Alias gd -Value Get-Date

Set-Alias -Name gexepol -Value Get-ExecutionPolicy
# Set-Alias -Name sexepolrs -Value Set-ExecutionPolicy RemoteSigned
# Set-Alias -Name sexepolr -Value Set-ExecutionPolicy Restricted

Set-Alias -Name gh -Value Get-Help
Set-Alias -Name uh -Value Update-Help


Set-Alias -Name wrh -Value Write-Host

Set-Alias -Name shutdown -Value Stop-Computer  # A bit superfluous, but a useful measure.

function Get-Version {
    $PSVersionTable.PSVersion
}

function sexepolrs {
    Set-ExecutionPolicy RemoteSigned
}

function sexepolr {
    Set-ExecutionPolicy Restricted
}

function Get-CPU {
    Get-ComputerInfo -Property CsProcessors
}

Set-Alias gcpu -Value Get-CPU

Set-Alias gnic -Value Get-NetIPConfiguration
