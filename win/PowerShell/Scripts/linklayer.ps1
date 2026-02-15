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
    'AuthorizationManager'         = 'azman.msc'

    'Calculator'                   = 'calc.exe'
    'CertManager-CurrentUser'      = 'certmgr.msc'
    'CertManager-LocalMachine'     = 'certlm.msc'
    'CharacterMap'                 = 'charmap.exe'
    'CleanManager'                 = 'cleanmgr.exe'
    'ColorManagement'              = 'colorcpl.exe'
    'CommandPrompt'                = 'cmd.exe'
    'ComponentServices'            = 'comexp.msc'
    'ComputerDefaultsApps'         = 'ComputerDefaults.exe'
    'ComputerManagment'            = 'compmgmt.msc'
    'ControlPanel'                 = 'control.exe'
    'CredentialWizard'             = 'credwiz.exe'

    'DeviceManager'                = 'devmgmt.msc'
    'DevModeRunAsUserConfig'       = 'devmoderunasuserconfig.msc'
    'DigitizerMapper'              = 'MultiDigiMon.exe'
    'DirectXDiagnosticTool'        = 'dxdiag.exe'
    'DisplayColorCalibration'      = 'dccw.exe'
    'DisplayControlPanel'          = 'dpiscaling.exe'
    'DiskManagement'               = 'diskmgmt.msc'
    'DriveOptimizer'               = 'dfrgui.exe'

    'Edit'                         = 'edit.exe'
    'EventViewer'                  = 'eventvwr.exe'

    'FileHistory'                  = 'FileHistory.exe'
    'FileSignatureVerification'    = 'sigverif.exe'

    'IExpress'                     = 'iexpress.exe'
    'iSCSCInitiator'               = 'iscsicpl.exe'

    'LiveCaptions'                 = 'LiveCaptions.exe'
    'LocalUsersandGroups'          = 'lusrmgr.msc'

    'MaliciousSoftwareRemovalTool' = 'MRT.exe'
    'MemoryDiagnosticsTool'        = 'MdSched.exe'
    'MicrosoftManagementConsole'   = 'mmc.exe'
    'MobilityCenter'               = 'mblctr.exe'

    'Narrator'                     = 'Narrator.exe'
    'Notepad'                      = 'notepad.exe'
    
    'ODBCAdministrator'            = 'odbcad32.exe'
    'OptionalFeatures'             = 'OptionalFeatures.exe'
    'OnScreenKeyboard'             = 'osk.exe'
    
    'PerformanceMonitor'           = 'perfmon.exe'    
    'PowerShellISE'                = 'WindowsPowershell\v1.0\powershell_ise.exe'
    'ProblemStepsRecorder'         = 'psr.exe'

    'RegistryEditor'               = 'regedt32.exe'
    'RemoteDesktopConnection'      = 'mstsc.exe'
    'ResourceMonitor'              = 'resmon.exe'

    'Services'                     = 'services.msc'
    'ShareCreationWizard'          = 'shrpubw.exe'
    'SharedFolders'                = 'fsmgmt.msc'
    'SQLClientConfigUtility'       = 'cliconfg.exe'
    'SystemConfiguration'          = 'msconfig.exe'
    'SystemInformation'            = 'msinfo32.exe'
    'SystemProperties'             = 'SystemPropertiesComputerName.exe'

    'TaskManager'                  = 'Taskmgr.exe'
    'TaskScheduler'                = 'taskschd.msc'
    'TPMManagement'                = 'tpm.msc'

    'UserAccounts'                 = 'Netplwiz.exe'

    'VoiceAccess'                  = 'VoiceAccess.exe'
    'VolumeMixer'                  = 'SndVol.exe'

    'WindowsFaxAndScan'            = 'WFS.exe'
    'WindowsFirewall'              = 'WF.msc'
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

# LocalGroupPolicyEditor - C:\Windows\System32\gpedit.msc
# LocalSecurityPolicy - C:\Windows\System32\secpol.msc
