# wsl-setup.ps1
# Define the distributions you want in the array provided
# The ones specified already are placeholders

$distros = @(
    'archlinux'
    'Debian'
    'FedoraLinux-44'
)

$distros | ForEach-Object { wsl.exe --install $_ --no-launch }
Write-Output "Distros downloaded. Please confirm."
wsl.exe --list
