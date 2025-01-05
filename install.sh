#!/bin/sh
############################
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

# https://ohmyz.sh/#install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git -C ~/.oh-my-zsh/custom/themes/spaceship-prompt pull || git clone https://github.com/spaceship-prompt/spaceship-prompt.git ~/.oh-my-zsh/custom/themes/spaceship-prompt --depth=1
ln -sf ~/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme

git -C ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions pull || git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions --depth=1

echo "Creating symlink to zshrc, bash_profile, bash_alias and bashrc in home directory."
ln -sf ~/dotfiles/zshrc ~/.zshrc
ln -sf ~/dotfiles/aliases ~/.aliases
ln -sf ~/dotfiles/bash_profile ~/.bash_profile
ln -sf ~/dotfiles/bashrc ~/.bashrc

# echo "Creating symlink to vimrc in home/config/nvim directory."
mkdir -p ~/.config/nvim/
ln -sf ~/dotfiles/init.vim ~/.config/nvim/init.vim
ln -sf ~/dotfiles/coc-settings.json ~/.config/nvim/coc-settings.json

