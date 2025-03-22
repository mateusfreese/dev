#!/usr/bin/env bash

sudo apt update
sudo apt install libgtk-4-dev libadwaita-1-dev git blueprint-compiler gettext gcc-multilib

wget https://ziglang.org/download/0.14.0/zig-linux-x86_64-0.14.0.tar.xz -O /tmp/zig.tar.xz
tar -xvf /tmp/zig.tar.xz -C $HOME/.local
export PATH="$HOME/.local/zig-linux-x86_64-0.14.0:$PATH"

git clone git@github.com:ghostty-org/ghostty.git $HOME/personal/ghostty

(
cd $HOME/personal/ghostty
git checkout tip
zig build -p $HOME/.local -Doptimize=ReleaseFast
)
