# Requires -RunAsAdministrator
 
<#
    Andronicus.ps1 - in which we make a backup of the hosts file in Windows and
    add a few blocks to various Microsoft and Windows related telemetry sites

    1ST WARNING: This script is best used for creating airgapped Windows machines

    2ND WARNING: You must run win-scaffold.ps1 first to make the proper files and
    save appropriately, otherwise, this won't work. 

    "What hast done, unnatural and unkind?" - (Tit. 5.3.48)
    William Shakespeare. "Titus Andronicus." edited by Peter Alexander
    The Complete Works of William Shakespeare: The Alexander Text,
    edited by Peter Alexander, London, Collins, 1989, pg.899,
#>

# First, copy the file
Copy-Item -Path "C:\Windows\System32\drivers\etc\hosts" -Destination "C:\Windows\System32\drivers\etc\hosts.backup"

# Second, we append the file

Get-Content -Path "C:\Users\${env:USERNAME}\lang\TXT\guests.txt" | Add-Content -Path "C:\Windows\System32\drivers\etc\hosts."
