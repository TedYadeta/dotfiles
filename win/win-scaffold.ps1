# win-scaffold.ps1 - Script to create dedicated scripting folder in user's home directory
# Remember to run "Set-ExecutionPolicy RemoteSigned" in order to run this in your environment


New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang

New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang\AdvancedQuerySyntax
New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang\BatchScript
New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang\JScript
New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang\PowerShell
New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang\RegistryEdits
New-Item -ItemType Directory -Path C:\Users\$env:USERNAME\lang\VBScript
