# wsl-setup.ps1
# Define the distributions you want removed in the array provided
# The ones specified already are placeholders

$distros = @(
    'archlinux'
    'Debian'
    'FedoraLinux-44'
)

$distros | ForEach-Object { wsl.exe --unregister $_ }
Write-Output "Distros deleted. Please confirm."
wsl.exe --list
