#!/bin/bash

set -u

# 実行場所のディレクトリを取得
THIS_DIR=$(cd $(dirname $0); pwd)
cd $THIS_DIR

git submodule init
git submodule update

echo "Link the .Brewfile in the dotfiles directory to the home directory"
ln -snfv "$THIS_DIR"/.Brewfile ~/

echo "Install finished!"