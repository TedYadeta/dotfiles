# vmsetup
My scripts for setting up VMs including downloading various language interpreters and compilers

Structure as follows:
install.sh

    |________ mklangdir.sh (Create the initial language folders, accounting for the ones already installed in the guest distro)
    |________ cpallrc.sh (Copy my .bash_aliases, .vimrc and .emacs/init.d file (Bonus points if we get put them in their respective files and symlink them.)
    |________ installgcc.sh (Get all compilers of the latest version of GCC (C, C++, Fortran, Ada, Go, D, while also making sure that it works across all major package managers.)
    |________ installotherlang.sh (Install other languages that don't come by default, but would be nice to have (Ruby, PHP, etc.)
    *** then run mklangdir.sh (Then have install.sh run mklangdir.sh again to update itself.)

    
