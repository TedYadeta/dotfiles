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

a evrc='vim $HOME/lang/vimscript/.vimrc
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
a cobol='gnucobol'
a sch='guile'
a mk='make'
a oct='octave-cli'

# II.b) Others such as Interpreters or other Compilers
# ----------------------------------------------------

a js='rhino'
a pl='perl'
a py3='python3 -i $HOME/lang/python/pythonrc.py'
a rb='ruby'

# III. Git Aliases
# ================

# Right now, using the Git Pro Book, 2nd Edition to help organize the wide variety of commmands here (will fix later):

# III.a) Setup and Config
# -----------------------

a gcfg='git config'
a ghlp='git help'
a gbug='git bugreport'

# III.b) Getting and Creating Projects
# ------------------------------------

a gini='git init'
a gclo='git clone'

# III.c) Basic Snapshotting
# -------------------------

a gadd='git add'
a gsts='git status'
a gdff='git diff'
a gcom='git commit'
a gnts='git notes'
a gres='git restore'
a grst='git reset'
a grm='git rm'
a gmv='git mv'

# III.d) Branching and Merging
# ----------------------------

a gbch='git branch'
a gcko='git checkout'
a gswi='git switch'
a gmer='git merge'
a gmtl='git mergetool'
a glog='git log'
a gsth='git stash'
a gtag='git tag'
a gwrt='git worktree'

# III.e) Sharing and Updating Projects
# ------------------------------------

a gftc='git fetch'
a gpll='git pull'
a gpsh='git push'
a grmt='git remote'
a gsmd='git submodule'

# III.f) Inspection and Comparison
# --------------------------------

a gshw='git show'
a gdft='git difftool'
a grdf='git range-diff'
a gshl='git shortlog'
a gdes='git describe'

# III.g) Patching
# ---------------

a gapl='git apply'
a gcpk='git cherry-pick'
a greb='git rebase'
a grev='git revert'

# III.h) Debugging
# ----------------

a gbis='git bisect'
a gblm='git blame'
a ggrp='git grep'

# III.i) Email
# ------------

a gam='git am'
a gfmp='git format-patch'
a gsne='git send-email'
a grqp='git request-pull'

# III.j) External Systems
# -----------------------

a gsvn='git svn'
a gfim='git fast-import'

# III.k) Administration
# ---------------------

a gcle='git clean'
a ggc='git gc'
a gfsk='git fsck'
a grfg='git reflog'
a gflb='git filter-branch'
a ginw='git instaweb'
a garc='git archive'
a gbdl='git bundle'

# III.l) Server Admin
# -------------------

a gdmn='git daemon'
a gusi='git update-server-info'

# III.m) Plumbing Commands
# ------------------------

a gctf='git cat-file'
a gcki='git check-ignore'
a gcix='git checkout-index'
a gcmt='git commit-tree'
a gcob='git count-objects'
a gdfx='git diff-index'
a gfer='git for-each-ref'
a ghob='git hash-object'
a glsf='git ls-files'
a glst='git ls-tree'
a gmgb='git merge-base'
a grdt='git read-tree'
a grvl='git rev-list'
a grvp='git rev-parse'
a gshr='git show-ref'
a gsym='git symbolic-ref'
a gupx='git update-index'
a gvpk='git verify-pack'
a gwrt='git write-tree'

a grrr='git rerere' # Only necessary if 'rerere' is enabled
