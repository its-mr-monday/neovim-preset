#!/bin/bash

directoryx="$(dirname -- $(readlink -fn -- "$0"; echo x))"
BASEDIR="${directoryx%x}"
STARTDIR=$PWD

cd $BASEDIR
echo "Applying neovim configuration"
mkdir -p ~/.config/nvim
rm -rf ~/.config/nvim/*
cp -r lua ~/.config/nvim/lua
cp init.lua ~/.config/nvim/init.lua
echo "Done"
exit 0
