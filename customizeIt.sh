#!/bin/bash
# TODO: Respect existing files, don't just overwrite things
# How about you make the backup first
if [ ! -f ~/.vimrc.backup ]; then
    cp ~/.vimrc ~/.vimrc.backup
fi
if [ ! -f ~/.tmux.backup ]; then
    cp ~/.tmux ~/.tmux.backup
fi

# Overwrite vimrc
cp vimrc ~/.vimrc
# Overwrite tmux config
cp tmux.conf ~/.tmux.conf
# Append to bashrc
if [ -f ~/.bashrc.backup ]; then
    cp ~/.bashrc.backup ~/.bashrc
    cat bashrc >> ~/.bashrc
else
    cp ~/.bashrc ~/.bashrc.backup
    cat bashrc >> ~/.bashrc
fi
