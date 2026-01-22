echo "Creating Symlinks..."

REM linklayer.cmd - Script that creates a "Windows Master Control Panel," every application in one place
REM I know, I know, broke DRY all over this place, but while it's an ugly, kludged-together solution,
REM It's an ugly, kludged-together solution that works. :) This script WILL be refactored.

REM - Jan. 20, 2026 - Adding logic depending on whether Windows Machine is Home, Pro, Enterprise or Server

mkdir "C:\Users\%USERNAME%\lang\Symlink\Home"
mkdir "C:\Users\%USERNAME%\lang\Symlink\Pro"
mkdir "C:\Users\%USERNAME%\lang\Symlink\Enterprise"
mkdir "C:\Users\%USERNAME%\lang\Symlink\Server"

REM - APPLICATIONS FOUND BY DEFAULT ON WINDOWS 11 HOME 

mklink "C:\Users\%USERNAME%\lang\Symlink\Home\Calculator" "C:\Windows\System32\calc.exe"
mklink "C:\Users\%USERNAME%\lang\Symlink\Home\CharacterMap" "C:\Windows\System32\charmap.exe"
mklink "C:\Users\%USERNAME%\lang\Symlink\Home\CleanManager" "C:\Windows\System32\cleanmgr.exe"
mklink "C:\Users\%USERNAME%\lang\Symlink\Home\ColorManagement" "C:\Windows\System32\colorcpl.exe"
mklink "C:\Users\%USERNAME%\lang\Symlink\Home\CommandPrompt" "C:\Windows\System32\cmd.exe"
mklink "C:\Users\%USERNAME%\lang\Symlink\Home\ComputerDefaultsApps" "C:\Windows\System32\ComputerDefaults.exe"
mklink "C:\Users\%USERNAME%\lang\Symlink\Home\ComputerManagement" "C:\Windows\System32\CompMgmtLauncher.exe"
mklink "C:\Users\%USERNAME%\lang\Symlink\Home\ControlPanel" "C:\Windows\System32\control.exe"
mklink "C:\Users\%USERNAME%\lang\Symlink\Home\CredentialWizard" "C:\Windows\System32\credwiz.exe"

mklink "C:\Users\%USERNAME%\lang\Symlink\Home\EventViewer" "C:\Windows\System32\eventvwr.exe"

mklink "C:\Users\%USERNAME%\lang\Symlink\Home\FileHistory" "C:\Windows\System32\FileHistory.exe"

mklink "C:\Users\%USERNAME%\lang\Symlink\Home\MaliciousSoftwareRemovalTool" "C:\Windows\System32\MRT.exe"
mklink "C:\Users\%USERNAME%\lang\Symlink\Home\MicrosoftManagementConsole" "C:\Windows\System32\mmc.exe"

mklink "C:\Users\%USERNAME%\lang\Symlink\Home\Narrator" "C:\Windows\System32\Narrator.exe"

mklink "C:\Users\%USERNAME%\lang\Symlink\Home\OnScreenKeyboard" "C:\Windows\System32\osk.exe"

mklink "C:\Users\%USERNAME%\lang\Symlink\Home\PerformanceMonitor" "C:\Windows\System32\perfmon.exe"
mklink "C:\Users\%USERNAME%\lang\Symlink\Home\PowerShellISE" "C:\Windows\System32\WindowsPowerShell\v1.0\powershell_ise.exe"
mklink "C:\Users\%USERNAME%\lang\Symlink\Home\ProblemStepsRecorder" "C:\Windows\System32\psr.exe"

mklink "C:\Users\%USERNAME%\lang\Symlink\Home\RemoteDesktopConnection" "C:\Windows\System32\mstsc.exe"
mklink "C:\Users\%USERNAME%\lang\Symlink\Home\ResourceMonitor" "C:\Windows\System32\resmon.exe"

mklink "C:\Users\%USERNAME%\lang\Symlink\Home\SQLClientConfigUtility" "C:\Windows\System32\cliconfg.exe"
mklink "C:\Users\%USERNAME%\lang\Symlink\Home\SystemConfiguration" "C:\Windows\System32\msconfig.exe"
mklink "C:\Users\%USERNAME%\lang\Symlink\Home\SystemInformation" "C:\Windows\System32\msinfo32.exe"

mklink "C:\Users\%USERNAME%\lang\Symlink\Home\TaskManager" "C:\Windows\System32\Taskmgr.exe"
mklink "C:\Users\%USERNAME%\lang\Symlink\Home\TaskScheduler" "C:\Windows\System32\taskschd.exe"

mklink "C:\Users\%USERNAME%\lang\Symlink\Home\VoiceAccess" "C:\Windows\System32\VoiceAccess.exe"

mklink "C:\Users\%USERNAME%\lang\Symlink\Home\WindowsFaxAndScan" "C:\Windows\System32\WFS.exe"
mklink "C:\Users\%USERNAME%\lang\Symlink\Home\WindowsRemoteAssistance" "C:\Windows\System32\msra.exe"


REM - APPLICATIONS FOUND ON WINDOWS 11 PRO (The symlinks below are broken, which I can fix in PowerShell with Test-Path)

REM - mklink "C:\Users\%USERNAME%\lang\Symlink\Pro\GroupPolicyEditor" "C:\Windows\System32\gpedit.msc"
REM - mklink "C:\Users\%USERNAME%\lang\Symlink\Pro\SecurityPolicyEditor" "C:\Windows\System32\secpol.msc"

echo "Symlinks created. Press ENTER to complete."
pause