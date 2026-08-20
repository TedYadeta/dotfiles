Clear-Host

$cpu = Get-CimInstance Win32_Processor | Select-Object -ExpandProperty Name
# Logic for Memory Calculation below provided from https://stackoverflow.com/questions/74306458/powershell-get-ciminstance-class-cim-physicalmemory-returns-answer-in-parts
$mem = (Get-CimInstance -Query "Select Capacity from CIM_PhysicalMemory" | Measure-Object -Property capacity -Sum).sum / 1GB
$num = Get-CimInstance Win32_BIOS | Select-Object -ExpandProperty SerialNumber
$ver = Get-CimInstance Win32_OperatingSystem | Select-Object -ExpandProperty Version

Write-Host "About This PC"
Write-Host "============="
Write-Host "Chip:            $cpu"
Write-Host "Memory:          $mem GB"
Write-Host "Serial Number:   $num"
Write-Host "OS:              $ver"