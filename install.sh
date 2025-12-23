#!/bin/bash

echo "🚀 Setting up your Mac..."

# 1. Homebrewがない場合はインストール
if ! command -v brew &> /dev/null; then
    echo "🍺 Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    # パスを通す（M1/M2/M3/M4向け）
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# 2. Brewfileの内容をインストール
echo "📦 Installing Bundle..."
brew bundle --file ~/dotfiles/Brewfile

# 3. Stowでシンボリックリンクを貼る
# 既存の .zshrc があるとエラーになるのでバックアップして退避
if [ -f ~/.zshrc ]; then
    echo "⚠️  Backing up existing .zshrc to .zshrc.bak"
    mv ~/.zshrc ~/.zshrc.bak
fi

echo "🔗 Linking dotfiles..."
cd ~/dotfiles
stow -v zsh
stow -v starship

echo "✨ Done! Restart your terminal."

