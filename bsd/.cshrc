# -1. Shell Prompt Setup (Yes, yes, lazy to not shift the numbers by 1.)
# ======================================================================

set ampm
set color
set correct
set padhour
set prompt="[%n@%M %W %D %Y %P %~]"
set rmstart
set visiblebell

alias a 'alias'

a v 'vim'

a e 'emacs'
a ee 'emacs $HOME/.emacs'
a enw 'emacs -nw'

alias fbsd-ver freebsd version

# Need to order this up for later when I have time:

# O. Aliases for Editing .*rc files
# =================================

a eba 'vim $HOME/.bash_aliases'
a sba 'vim $HOME/.bash_aliases'

a evrc 'vim $HOME/.vimrc'
a svrc 'source $HOME/.vimrc'

a e 'emacs'

a n 'nano'

# I. Aliases for Unix/Linux/GNU Commands
# ======================================                                       

a ll 'ls -la'
a lt 'ls -lat'
a cls 'clear'
a mkd 'mkdir'
a rmd 'rmdir'

a m 'man'
a i 'info'
a h 'help'

a freshenup 'sudo dnf update && sudo dnf upgrade'
a vulnerabilities 'grep . /sys/devices/system/cpu/vulnerabilities/*'

# II. Aliases for Programming Languages, their interpreters and compilers
# =======================================================================                                                                        

# II.a GNU Compiler Collection (or GNU-affiliated) Aliases
# --------------------------------------------------------

a cc 'gcc -Wall'
a cpp 'g++ -Wall'
a go 'gccgo'
a cl 'gcl'
a d 'gdc'
a ada 'gnat'
a ft 'gfortran'
a cobol 'gnucobol'
a sch 'guile'
a mk 'make'
a oct 'octave-cli'

# II.b) Others such as Interpreters or other Compilers
# ----------------------------------------------------

a js 'gjs'
a pl 'perl'
a py3 'python3'
a rb 'ruby'

# II.c) Aliases for Ansible
# -------------------------

a ans 'ansible'
a ans-cfg 'ansible-config'
a ans-con 'ansible-console'
a ans-doc 'ansible-doc'
a ans-gxy 'ansible-galaxy'
a ans-inv 'ansible-inventory'
a ans-pbk 'ansible-playbook'
a ans-pul 'ansible-pull'
a ans-vlt 'ansible-vault'

# III) ZFS Aliases
# ================

alias zpver  zpool version
alias zpls   zpool list
alias zpstat zpool status
alias zpio   zpool iostat
alias zpevts zpool events
alias zphist zpool history
