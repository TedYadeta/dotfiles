# win-scaffold.ps1 - Script to create dedicated scripting folder in user's home directory
# Remember to run "Set-ExecutionPolicy RemoteSigned" in order to run this in your environment


New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang

New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang\AdvancedQuerySyntax
New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang\BatchScript
New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang\CSharp
New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang\CSV
New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang\FSharp
New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang\INI
New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang\JScript
New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang\MSC
New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang\PowerShell
New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang\RegEntries
New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang\RegHives
New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang\VBScript
New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang\WQLQueries
New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang\XML

