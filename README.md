# vmsetup
My scripts for setting up VMs including downloading various language interpreters and compilers

Structure as follows:
install.sh

1. mklangdir.sh (Create the initial language folders, accounting for the ones already installed in the guest distro)
2. cpallrc.sh (Copy my .bash_aliases, .vimrc and .emacs/init.d file (Bonus points if we get put them in their respective files and symlink them.)
3. getallgcc.sh (Get all compilers of the latest version of GCC (C, C++, Fortran, Ada, Go, D, while also making sure that it works across all major package managers.)
4. getlang.sh (Install other languages that don't come by default, but would be nice to have (Ruby, PHP, etc.)
5. then run mklangdir.sh (Then have install.sh run mklangdir.sh again to update itself.)

    
