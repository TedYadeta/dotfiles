$filepath = Read-Host "Please provide a filepath to show the Raw and Converted SDDL Strings:"
if (Test-Path $filepath) {
    $acl = Get-Acl -Path $filepath
    Write-Host
    Write-Host "Raw SDDL String:"
    Write-Host "===============":
    $acl | Format-List -Property Sddl
    Write-Host
    Write-Host "Converted SDDL String:"
    Write-Host "======================"
    ConvertFrom-SddlString $acl.sddl 
} else {
    Write-Host "Error: Invalid Filepath" -ForegroundColor Red -BackgroundColor Black
}