# win-scaffold.ps1 - Script to create dedicated scripting folder in user's home directory
# Remember to run "Set-ExecutionPolicy RemoteSigned" in order to run this in your environment

# First, we set the table, ensuring each Programming or Scripting Language, File Format or QoL tool has a place.
New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang
Set-Location -Path C:\Users\$env:USERNAME\lang

$langdirs = @("AdminTemplates",
              "AdvancedQuerySyntax",
              "ASP",
              "Backup",
              "BatchScript", 
              "Cabinets",
              "CPL", 
              "CSV",
              "CSharp",
              "DAT",
              "DDF",
              "DLL",
              "Events",
              "EXE",
              "Firewall", 
              "FSharp",
              "GodMode", 
              "ICO",
              "INF",
              "INI",
              "JSON", 
              "JScript", 
              "LINQ",
              "LOG",
              "Markdown",
              "MOF",
              "MSBuild",
              "MSC",
              "MSIL",
              "PowerShell",
              "Python",
              "RDP",
              "Registry",
              "Server",
              "Symlink",
              "TXT",
              "VBScript",
              "VisualBasic",
              "WPF",
              "WQL",
              "WSL",
              "XML")

foreach ($langdir in $langdirs)
    {New-Item -Path $langdir -ItemType Directory -Force}

# Once, the initial folder hierarchy is in place, we move into subfolders, starting with Events and associated File Formats
Set-Location -Path C:\Users\$env:USERNAME\lang\Events

$evtslangdirs = @("EVT",
                  "ETL",
                  "EVTX")

foreach ($evtdir in $evtslangdirs)
  {New-Item -Path $evtdir -ItemType Directory -Force}

# Next, we provide some cutlery and organize how PowerShell saves its proper file formats
Set-Location -Path C:\Users\$env:USERNAME\lang\PowerShell 

$pwshlangdirs = @("Manifests",
                 "Modules",
                 "Scripts",
                 "SessionConfig")

foreach ($pwshlangdir in $pwshlangdirs)
    {New-Item -Path $pwshlangdir -ItemType Directory -Force}

# Then, we set to Registry-specific subfolders
Set-Location -Path C:\Users\$env:USERNAME\lang\Registry

$reglangdirs = @("Entries",
                 "Hives",
                 "Policies")

foreach ($reglangdir in $reglangdirs)
  {New-Item -Path $reglangdir -ItemType Directory -Force}


# Following that, we allow for others to follow, so in the case of XML, specific formats unique to it.
Set-Location -Path C:\Users\$env:USERNAME\lang\XML

$xmllangdirs = @("AssistanceMarkupLanguage",
                 "AutoUnattend",
                 "ScheduledTasks")

foreach ($xmllangdir in $xmllangdirs)
    {New-Item -Path $xmllangdir -ItemType Directory -Force}

Write-Host -ForegroundColor Green "Windows Folder Structure deployed. Happy programming/scripting!"

