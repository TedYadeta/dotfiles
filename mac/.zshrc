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
# add one for resetting the Dock here

# 3. macOS Application Alias Shortcuts
# ====================================
alias sedit="open -a 'Script Editor'"
alias autom8="open -a Automator"
alias lacerate="open -a Shortcuts"

# 4. Programming Language Aliases
# ===============================
alias rb="ruby"
alias pl="perl"
