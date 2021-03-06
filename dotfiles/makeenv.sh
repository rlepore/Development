#!/bin/bash

############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# Built off of http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/ 
# and using his https://github.com/michaeljsmalley/dotfiles/blob/master/makesymlinks.sh as my starting point....
############################

if [  $USER == "root" ]; then
echo "This script cannot be run as root"
    exit
fi

########## Variables

dir=~/sys/Development/dotfiles # dotfiles directory
olddir=~/.df_backup # old dotfiles backup directory
files="bashrc bash_aliases psqlrc emacs emacs.d" # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
