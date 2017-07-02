#!/bin/bash

# Overwrite vimrc
cp vimrc ~/.vimrc
# Append to bashrc
if [ -f ~/.bashrc.backup ]; then
    cp ~/.bashrc.backup ~/.bashrc
    cat bashrc >> ~/.bashrc
else
    cp ~/.bashrc ~/.bashrc.backup
    cat bashrc >> ~/.bashrc
fi
