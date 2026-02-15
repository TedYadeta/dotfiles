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


# I.a Aliases for Midnight Commander 
# ==================================

a mcc='mcview'
a mcd='mcdiff'
a mce='mcedit'

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

# III. Systemd and Systemd-Analyze Command Aliases

# III.a)  Systemd Aliases
# ======================

a sysd-lsunits='systemctl list-units'
a sysd-lsautomnts='systemctl list-automounts' 
a sysd-lspaths='systemctl list-paths'
a sysd-lssockets='systemctl list-sockets'
a sysd-lstimers='systemctl list-timers'
a sysd-lsdeps='systemctl list-dependencies'
a sysd-lsmach='systemctl list-machines'
a sysd-lsjobs='systemctl list-jobs'

a sysd-stat='systemctl status'
a sysd-show='systemctl show'
a sysd-cat='systemctl cat'
a sysd-help='systemctl help'

a sysd-slogl='systemctl service-log-level'
a sysd-slogt='systemctl service-log-target'
a sysd-wai='systemctl whoami'

a sysd-getd='systemctl get-default'

a sysd-showenv='systemctl show-environment'

# III.b)  Systemd-Analyze Aliases
# ==============================

a sdanalyze='systemd-analyze'
a sdanalyze-blm='systemd-analyze blame'
a sdanalyze-crit='systemd-analyze critical-chain'
a sdanalyze-dump='systemd-analyze dump'
a sdanalyze-plot='systemd-analyze plot'
a sdanalyze-dot='systemd-analyze dot'
a sdanalyze-ufiles='systemd-analyze unit-files'
a sdanalyze-ugdb='systemd-analyze unit-gdb'
a sdanalyze-upaths='systemd-analyze unit-paths'
a sdanalyze-exits='systemd-analyze exit-status'
a sdanalyze-cap='systemd-analyze capability'
a sdanalyze-cond='systemd-analyze condition'
a sdanalyze-sysfilt='systemd-analyze syscall-filter'
a sdanalyze-fsys='systemd-analyze filesystems'
a sdanalyze-cal='systemd-analyze-calendar'
a sdanalyze-stamp='systemd-analyze timestamp'
a sdanalyze-tspan='systemd-analyze timespan'
a sdanalyze-catcfg='systemd-analyze cat-config'
a sdanalyze-cmpver='systemd-analyze compare-versions'
a sdanalyze-ver='systemd-analyze verify'
a sdanalyze-sec='systemd-analyze security'
a sdanalyze-ielf='systemd-analyze inspect-elf'
a sdanalyze-malloc='systemd-analyze malloc'
a sdanalyze-fds='systemd-analyze fdstore'
a sdanalyze-ipol='systemd-analyze image-policy'
a sdanalyze-tpm2='systemd-analyze has-tpm2'
a sdanalyze-pcrs='systemd-analyze pcrs'
a sdanalyze-srk='systemd-analyze srk'
a sdanalyze-arch='systemd-analyze architectures'
a sdanalyze-smbios='systemd-analyze smbios11'
a sdanalyze-chid='systemd-analyze chid'
a sdanalyze-trset='systemd-analyze transient-settings'
