#!/usr/bin/env zsh
set -x
set -e


# Script Functions 
function pull_repo() {
    cd $1
    git pull
    cd -
}


# BAT
sudo apt install bat

# FASD
if [[ ! -f $HOME/bin/fasd ]]; then
    git clone https://github.com/clvv/fasd.git /tmp/fasd
    cd /tmp/fasd
    PREFIX=$HOME make install
    cd -
fi


# FZF
if [[ ! -f $HOME/.fzf/bin/fzf ]]; then
    git clone https://github.com/junegunn/fzf.git $HOME/.fzf
    yes | $HOME/.fzf/install
fi


# DIFF-SO-FANCY
# if [[ ! -f $HOME/bin/diff-so-fancy ]]; then
#     curl -o $HOME/bin/diff-so-fancy https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy
#     chmod +x $HOME/bin/diff-so-fancy
# fi


# TMUX
if [[ ! -d $HOME/.tmux/plugins/tpm ]]; then
    mkdir -p $HOME/.tmux/plugins
    git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
fi
pull_repo $HOME/.tmux/plugins/tpm


# ZSH
if [[ ! -d $HOME/.zprezto ]]; then
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi
cd $HOME/.zprezto
git pull
git submodule update --init --recursive
cd - 