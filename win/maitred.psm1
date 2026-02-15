#Required -RunAsAdminstrator

function Enable-AD {
    Install-WindowsFeature -Name ADCS-Cert-Authority -IncludeManagementTools
    Write-Host -ForegroundColor Green "Active Directory Certificate Services installed."
    Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools
    Write-Host -ForegroundColor Green "Active Directory Domain Services installed."
    Install-WindowsFeature -Name ADFS-Federation -IncludeManagementTools
    Write-Host -ForegroundColor Green "Active Directory Federation Services installed."
}

function Enable-DNSMan {
    Install-WindowsFeature -Name DNS -IncludeManagementTools
    Write-Host -ForegroundColor Green "DNS Manager installed."
}

function Enable-DHCPMan {
    Install-WindowsFeature -Name DHCP -IncludeManagementTools
    Write-Host -ForegroundColor Green "DHCP Manager installed."
}

function Enable-HyperV {
	Install-WindowsFeature -Name Hyper-V -IncludeManagementTools
	Write-Host -ForegroundColor Green "Please restart to enable Hyper-V"
	}
	
function Enable-IIS {
	Install-Windows Feature -Name Web-Server -IncludeManagementTools
	Write-Host -ForegroundColor Green "Windows IIS installed."
}
