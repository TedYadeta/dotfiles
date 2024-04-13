#!/bin/bash

# chkedit.sh
# This shell script checks if nano, vim or emacs are installed,
# by examining the /usr/bin folder

echo "Checking what editors are already installed..."
echo;

if [ -e /usr/bin/emacs ]
then
  echo "Emacs is already installed."
  emacs --version | head -n 1
else
  echo "Emacs is not installed."
fi

echo;

if [ -e /usr/bin/nano ]
then
  echo "Nano is already installed."
  nano --version | head -n 1
else
  echo "Nano is not installed."
fi

echo;

if [ -e /usr/bin/vim ]
then
  echo "Vim is already installed."
  nano --version | head -n 1
else
  echo "Vim is not installed."
fi

echo;

# Create symlinks to the .emacs and .vimrc files, as they will be stored in /lang/elisp and /lang/vimscript, respectively.

cd $HOME
ln -s $HOME/lang/elisp/.emacs .emacs
ln -s $HOME/lang/vimscript/.vimrc .vimrc
