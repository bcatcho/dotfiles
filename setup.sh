#!/bin/zsh

echo "[1] Install oh-my-zsh"
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

echo "\n[2] Copying files to root directory"

echo "\taliases > ~/.aliases"
cp aliases ~/.aliases

echo "\tzshrc > ~/.zshrc"
cp zshrc ~/.zshrc

echo "\tvimrc > ~/.vimrc"
cp vimrc ~/.vimrc

echo "\n[3] Setting git colors"
git config --global color.ui always

echo ""
while true; do
   read -p "[4] Install solarizedish iterm2 colors?[yN] " yn
   case $yn in
      [yY]* ) open "solarizedish.itermcolors"; break;;
      [nN]* ) echo "\tskipping iterm colors"; break;;
   esac
done

echo ""
while true; do
   read -p "[5] Install fonts?[yN] " yn
   case $yn in
      [yY]* ) open Inconsolata.otf; break;;
      [nN]* ) echo "\tskipping fonts"; break;;
   esac
done