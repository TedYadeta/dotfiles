#Requires -RunAsAdministrator

# Define the user; this should be you, yes you, reading this, running the script
$userpath = $env:USERPROFILE

# Mise-en-Place: Set the tables, from the plates and paths to the cutlery
Set-Location -Path $userpath\lang\Symlink

<#
 This makes folders as we are trying to support the following OS Versions:
 - Windows 11 Home
 - Windows 11 Pro
 - Windows 11 Enterprise

#>

$verdirs = @("Home",
             "Pro",
             "Enterprise"
             )

foreach ($verdir in $verdirs)
    {New-Item -Path $verdir -ItemType Directory -Force}


$symlinkhomepath = Join-Path -Path $userpath -Childpath lang\Symlink\Home

$symlinkpropath = Join-Path -Path $userpath -Childpath \lang\Symlink\Pro

$symlinkentpath = Join-Path -Path $userpath -Childpath \lang\Symlink\Enterprise


$system32path = 'C:\Windows\System32'

$linklist = [ordered]@{
    'Calculator'                   = 'calc.exe'
    'CharacterMap'                 = 'charmap.exe'
    'CleanManager'                 = 'cleanmgr.exe'
    'ColorManagement'              = 'colorcpl.exe'
    'CommandPrompt'                = 'cmd.exe'
    'ComputerDefaultsApps'         = 'ComputerDefaults.exe'
    'ControlPanel'                 = 'control.exe'
    'CredentialWizard'             = 'credwiz.exe'

    'EventViewer'                  = 'eventvwr.exe'

    'FileHistory'                  = 'FileHistory.exe'
    'FileSignatureVerification'    = 'sigverif.exe'

    'MaliciousSoftwareRemovalTool' = 'MRT.exe'
    'MemoryDiagnosticsTool'        = 'MdSched.exe'
    'MicrosoftManagementConsole'   = 'mmc.exe'

    'Narrator'                     = 'Narrator.exe'
    
    'OnScreenKeyboard'             = 'osk.exe'
    
    'PerformanceMonitor'           = 'perfmon.exe'    
    'PowerShellISE'                = 'WindowsPowershell\v1.0\powershell_ise.exe'
    'ProblemStepsRecorder'         = 'psr.exe'

    'RegistryEditor'               = 'regedt32.exe'
    'RemoteDesktopConnection'      = 'mstsc.exe'
    'ResourceMonitor'              = 'resmon.exe'

    'ShareCreationWizard'          = 'shrpubw.exe'
    'SQLClientConfigUtility'       = 'cliconfig.exe'
    'SystemConfiguration'          = 'msconfig.exe'
    'SystemInformation'            = 'msinfo32.exe'

    'TaskManager'                  = 'Taskmgr.exe'
    'TaskScheduler'                = 'taskschd.msc'

    'UserAccounts'                 = 'Netplwiz.exe'

    'VoiceAccess'                  = 'VoiceAccess.exe'
    'VolumeMixer'                  = 'SndVol.exe'

    'WindowsFaxAndScan'            = 'WFS.exe'
    'WindowsRemoteAssistance'      = 'msra.exe'
    }


$linklist.GetEnumerator() | ForEach-Object {
    $testsymlink = Join-Path -Path $symlinkhomepath -ChildPath $($_.key)
    Write-Host $testsymlink

    $symtargetpath = Join-Path -Path $system32path -ChildPath $($_.Value)
    Write-Host $symtargetpath

    New-Item -ItemType SymbolicLink -Path $testsymlink -Target $symtargetpath
}
    
<#
    To-Do List:
    1. Put entire symlink Home applications as a function
    2. Divide the Pro, and Enterprise Applications
    3. Create Similar Hash Tables for Pro and Enterprise
    4. Create a Version Detector, if Home, then run HomeSymlinkSetterFunction
    4a. If Pro, then run ProSymlinkSetterFunction, which will also run the HomeSymlinkSetterFunction
#>