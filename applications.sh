#!/bin/bash

### NOTE:
# 以下実行済みのこと
# - App Storeのログイン


echo "Change default path as zsh"
# pwが要求される
chsh -s /bin/zsh


echo "Install Rosetta 2"
# A入力でagree
softwareupdate --install-rosetta


echo "Enable AppleShowAllFiles"
defaults write com.apple.finder AppleShowAllFiles TRUE

echo "Install Command Line Tools for Xcode"
xcode-select --install

echo "Install homebrew"
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
git -C $(brew --repo homebrew/core) checkout master

echo "Enable brew path setting"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "Execute brew doctor"
which brew >/dev/null 2>&1 && brew doctor

echo "Run brew update"
which brew >/dev/null 2>&1 && brew update --verbose

echo "Install applications listed in .Brewfile"
brew bundle --global --verbose


echo "Python settings"
#rm -rf /usr/bin/python
echo 'alias python=python3' >> ~/.zshrc
source ~/.zshrc

echo "Link validation"
python -V

echo "Install poetry"
wget https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py
python get-poetry.py --uninstall
python get-poetry.py
rm -rf get-poetry.py
source $HOME/.poetry/env
# Temporary setting: https://qiita.com/sabaku20XX/items/74b45857351bfaf0f227
sed -i -e "1 s/python/python3/g" ~/.poetry/bin/poetry


echo "Set VSCode path"
cat << EOF >> ~/.zprofile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF


echo "Install finished!"