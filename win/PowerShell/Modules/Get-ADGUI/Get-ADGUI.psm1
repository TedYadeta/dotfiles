#Requires -Modules ActiveDirectory

#Get-ADGUI - in which we setup up functions and aliases for quickly summoning Active Directory GUIs.


# Active Directory Admin Center

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