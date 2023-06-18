#!/bin/bash

sudo apt-get install -y zsh
sudo chsh -s /bin/zsh vagrant

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/chammanganti/a-zsh-theme.git
cp ./a-zsh-theme/a.zsh-theme $HOME/.oh-my-zsh/themes/
rm -r a-zsh-theme

sed -i 's/ZSH_THEME=.*/ZSH_THEME=\"a\"/g' $HOME/.zshrc
