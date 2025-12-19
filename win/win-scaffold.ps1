# win-scaffold.ps1 - Script to create dedicated scripting folder in user's home directory
# Remember to run "Set-ExecutionPolicy RemoteSigned" in order to run this in your environment


New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang

$langdirs = @("AdminTemplates",
              "AdvancedQuerySyntax", 
              "BatchScript", 
              "Cabinets",
              "CPL", 
              "CSV",
              "CSharp",
              "DAT",
              "EVT",
              "Firewall", 
              "FSharp",
              "GodMode", 
              "INI",
              "JSON", 
              "JScript", 
              "MSC", 
              "PowerShell",
              "Python",
              "RegEntries", 
              "RegHives", 
              "RegPolicies", 
              "WQLQueries",
              "XML")

foreach ($langdir in $langdirs)
    {New-Item -Path $langdir -ItemType Directory -Force}
