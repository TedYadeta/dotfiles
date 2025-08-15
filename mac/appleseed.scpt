-- appleseed.scpt - An AppleScript to launch several applications for the sake of scripting and automation

set AppChoices to {"Automator", "Script Editor", "Terminal"}

set AppSelected to choose from list AppChoices with prompt "Select Application:" default items {"Automator"}

if item 1 of AppSelected is "Automator" then
  tell application "Automator"
    make new workflow
    activate
  end tell
end if

if item 1 of AppSelected is "Script Editor" then
  tell application "Script Editor"
    make new document
    activate
  end tell
end if

if item 1 of AppSelected is "Terminal" then
  tell application "Terminal"
    do script "cd ~/"
    activate
  end tell
end if
