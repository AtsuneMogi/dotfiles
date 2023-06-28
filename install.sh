#!/bin/bash
# exit program if undefined variables exist
set -u
# current directory
# move to dotfiles directory
BASEDIR=$(dirname $0)
cd $BASEDIR
# oparate on files of two or more characters
for f in .??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitconfig.local.template" ] && continue
    [ "$f" = ".gitmodules" ] && continue
    # post symbolic links
    ln -snfv ${PWD}/"$f" ~/
done
# install vim-plug
echo "Install vim-plug......"
# for Vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# for Neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
echo "Install completed!"
