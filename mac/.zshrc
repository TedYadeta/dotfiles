# 0. Default zsh Option
# =====================
setopt ALWAYS_TO_END
setopt BAD_PATTERN

# 1. Everyday aliases
# ===================
alias cls="clear"
alias ll="ls -la"
alias lt="ls -lt"
alias v="vim"

alias zhistory="cat ~/.zsh_history"


# 2. macOS CLI Aliases
# ====================
alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
alias insomnia="caffeinate -dimus"

alias desilt="killall Dock"

function drydock() {
  echo "Warning! You're going to completely reset the Dock! Continue?
  read -s -k "Press Enter to Continue or Ctrl-C to Cancel."
  defaults delete com.apple.dock
  killall Dock
  echo "Dock has been completely reset."
}

alias aboutthismac="system_profiler SPHardwareDataType"

alias lskext="kextfind"

alias scrcap="screencapture"

# 3. macOS Application Alias Shortcuts
# ====================================
alias sedit="open -a 'Script Editor'"
alias autom8="open -a Automator"
alias lacerate="open -a Shortcuts"

# 4. Programming Language Aliases
# ===============================
alias rb="ruby"
alias pl="perl"

