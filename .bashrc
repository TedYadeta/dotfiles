alias a='alias'

# Shortcuts for editors

a n='nano'
a v='vim'
a e='emacs'

# Need to order this up for later when I have time:

# O. Aliases for Editing .*rc files
# =================================

a eba='vim $HOME/.bash_aliases'
a sba='vim $HOME/.bash_aliases'

# Nano shortcuts

a nn='nano $HOME/.nanorc'

# Vim shortcuts

a evrc='vim $HOME/lang/vimscript/.vimrc'
a svrc='source $HOME/lang/vimscript/.vimrc'

# Emacs shortcuts

a ee='emacs $HOME/lang/elisp/.emacs'

# I. Aliases for Unix/Linux/GNU Commands
# ======================================

a cls='clear'
a mkd='mkdir'
a rmd='rmdir'

a m='man'
a i='info'

a whatos='cat /etc/os-release'


# II. Aliases for Programming Languages, their interpreters and compilers
# =======================================================================

# II.a GNU Compiler Collection (or GNU-affiliated) Aliases
# --------------------------------------------------------

a cc='gcc -Wall'
a cpp='g++ -Wall'
a go='gccgo'
a cl='gcl'
a d='gdc'
a ada='gnat'
a 4tran='gfortran'
a rs='gcc-rust'
a cobol='gnucobol'
a sch='guile'
a mk='make'
a oct='octave-cli'

# II.b) Others such as Interpreters or other Compilers
# ----------------------------------------------------

a js='rhino'
a pl='perl'
a py3='python3'
a rb='ruby'

# II.c) Aliases for Ansible
# -------------------------

a ans='ansible'
a ans-cfg='ansible-config'
a ans-con='ansible-console'
a ans-doc='ansible-doc'
a ans-gxy='ansible-galaxy'
a ans-inv='ansible-inventory'
a ans-pbk='ansible-playbook'
a ans-pul='ansible-pull'
a ans-vlt='ansible-vault'
