#!/bin/bash

# Dependencies
sudo apt-get install ninja-build gettext cmake curl build-essential

# Clone
git clone https://github.com/neovim/neovim $HOME/neovim

# Build
make -C ~/neovim clean
make -C ~/neovim CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make -C ~/neovim install
