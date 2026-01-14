echo "Creating Symlinks..."

REM linklayer.cmd - Script that creates a "Windows Master Control Panel," every application in one place
REM I know, I know, broke DRY all over this place, but while it's an ugly, kludged-together solution,
REM It's an ugly, kludged-together solution that works. :) This script WILL be refactored.

mklink "C:\Users\%USERNAME%\lang\Symlink\CharacterMap" "C:\Windows\System32\charmap.exe"
mklink "C:\Users\%USERNAME%\lang\Symlink\CMDPrompt" "C:\Windows\System32\cmd.exe"

mklink "C:\Users\%USERNAME%\lang\Symlink\EventViewer" "C:\Windows\System32\eventvwr.exe"

mklink "C:\Users\%USERNAME%\lang\Symlink\PerformanceMonitor" "C:\Windows\System32\perfmon.exe"
mklink "C:\Users\%USERNAME%\lang\Symlink\PowerShellISE" "C:\Windows\System32\WindowsPowerShell\v1.0\powershell_ise.exe"
mklink "C:\Users\%USERNAME%\lang\Symlink\ProblemStepsRecorder" "C:\Windows\System32\psr.exe"

mklink "C:\Users\%USERNAME%\lang\Symlink\RemoteDesktopConnection" "C:\Windows\System32\mstsc.exe"
mklink "C:\Users\%USERNAME%\lang\Symlink\ResourceMonitor" "C:\Windows\System32\resmon.exe"

mklink "C:\Users\%USERNAME%\lang\Symlink\TaskManager" "C:\Windows\System32\Taskmgr.exe"
mklink "C:\Users\%USERNAME%\lang\Symlink\TaskScheduler" "C:\Windows\System32\taskschd.exe"

mklink "C:\Users\%USERNAME%\lang\Symlink\WindowsFaxAndScan" "C:\Windows\System32\WFS.exe"

echo "Symlinks created. Press ENTER to complete."
pause