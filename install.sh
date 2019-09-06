#!/bin/bash
############################
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

dir=~/dotfiles                    # dotfiles directory

echo "Creating symlink to bash_profile, bash_alias and bashrc in home directory."
ln -sf $dir/bash_profile ~/.bash_profile
ln -sf $dir/bash_aliases ~/.bash_aliases
ln -sf $dir/bashrc ~/.bashrc

echo "Creating symlink to vimrc in home/config/nvim directory."
mkdir -p ~/.config/nvim/
ln -sf $dir/init.vim ~/.config/nvim/init.vim 
