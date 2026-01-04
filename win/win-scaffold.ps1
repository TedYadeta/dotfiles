# win-scaffold.ps1 - Script to create dedicated scripting folder in user's home directory
# Remember to run "Set-ExecutionPolicy RemoteSigned" in order to run this in your environment


New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang
Set-Location -Path C:\Users\$env:USERNAME\lang

$langdirs = @("AdminTemplates",
              "AdvancedQuerySyntax",
              "ASP",
              "BatchScript", 
              "Cabinets",
              "CPL", 
              "CSV",
              "CSharp",
              "DAT",
              "DDF",
              "DLL",
              "EVT",
              "EXE",
              "Firewall", 
              "FSharp",
              "GodMode", 
              "INF",
              "INI",
              "JSON", 
              "JScript", 
              "LINQ",
              "LNK",
              "MOF",
              "MSBuild",
              "MSC",
              "MSIL",
              "PowerShell",
              "Python",
              "RegEntries", 
              "RegHives", 
              "RegPolicies", 
              "VBScript",
              "VisualBasic",
              "WPF",
              "WQL",
              "XML")

foreach ($langdir in $langdirs)
    {New-Item -Path $langdir -ItemType Directory -Force}

Set-Location -Path C:\Users\$env:USERNAME\lang\PowerShell 

$pwshlangdirs = @("Manifests",
                 "Modules",
                 "Scripts")

foreach ($pwshlangdir in $pwshlangdirs)
    {New-Item -Path $pwshlangdir -ItemType Directory -Force}


