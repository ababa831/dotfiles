# Dotfiles

管理しやすく、いつでも再現可能なMac環境のdotfiles設定です。

GNU StowとBrewfileを使用して、シンボリックリンク管理とパッケージ一括管理を実現しています。

## 📋 概要

このリポジトリには以下の設定が含まれています：

- **Zsh設定**: シェル環境の最適化とプラグイン設定
- **Starship**: モダンでクリーンなプロンプト設定
- **Homebrew**: アプリケーションとツールの一括管理

## 🚀 クイックスタート

### 前提条件

- macOS (M1/M2/M3/M4 Mac推奨)
- インターネット接続

### インストール

1. リポジトリをクローン（またはダウンロード）します：

```bash
git clone <repository-url> ~/dotfiles
cd ~/dotfiles
```

2. セットアップスクリプトを実行します：

```bash
chmod +x install.sh
./install.sh
```

3. ターミナルを再起動します。

### セットアップスクリプトの動作

`install.sh`は以下の処理を自動で実行します：

1. **Homebrewのインストール**: 未インストールの場合は自動インストール
2. **パッケージのインストール**: `Brewfile`に記載されたアプリ・ツールを一括インストール
3. **設定ファイルのリンク**: GNU Stowを使用してシンボリックリンクを作成
   - `~/.zshrc` ← `dotfiles/zsh/.zshrc`
   - `~/.config/starship.toml` ← `dotfiles/starship/.config/starship.toml`

既存の`.zshrc`がある場合は、自動的に`.zshrc.bak`としてバックアップされます。

## 📂 ディレクトリ構成

```
dotfiles/
├── install.sh          # 一括セットアップ用スクリプト
├── Brewfile            # Homebrewパッケージ一覧
├── CHANGELOG.md        # 変更履歴
├── README.md           # このファイル
├── zsh/
│   └── .zshrc          # Zsh設定ファイル
└── starship/
    └── .config/
        └── starship.toml  # Starshipプロンプト設定
```

## 🔧 含まれるツールとアプリ

### コアユーティリティ

- `git` - バージョン管理
- `gh` - GitHub CLI
- `stow` - Dotfiles管理
- `fzf` - ファジーファインダー
- `uv` - Pythonパッケージマネージャー
- `fnm` - Node.jsバージョン管理
- `starship` - プロンプト

### Zshプラグイン

- `zsh-autosuggestions` - 入力補完
- `zsh-syntax-highlighting` - シンタックスハイライト

### GUIアプリケーション

- `ghostty` - ターミナル
- `orbstack` - Docker代替
- `cursor` - AIエディタ
- `visual-studio-code` - コードエディタ
- `raycast` - ランチャー
- `rectangle` - ウィンドウ管理
- `alt-tab` - アプリ切り替え

### フォント

- `font-hack-nerd-font` - Nerd Fonts

## ⚙️ 設定のカスタマイズ

### Zsh設定の変更

`zsh/.zshrc`を編集して、設定をカスタマイズできます。

```bash
vim ~/dotfiles/zsh/.zshrc
```

変更後、ターミナルを再起動するか、以下のコマンドで設定を再読み込みします：

```bash
source ~/.zshrc
```

### Starship設定の変更

`starship/.config/starship.toml`を編集して、プロンプトをカスタマイズできます。

```bash
vim ~/dotfiles/starship/.config/starship.toml
```

変更後、ターミナルを再起動すると反映されます。

### パッケージの追加・削除

`Brewfile`を編集して、インストールするパッケージを管理できます。

```bash
vim ~/dotfiles/Brewfile
```

変更後、以下のコマンドでパッケージを更新します：

```bash
brew bundle --file ~/dotfiles/Brewfile
```

## 🔄 設定の更新

設定ファイルを変更した後、GNU Stowでシンボリックリンクを再作成する必要はありません（既にリンクされているため）。

ただし、新しい設定ディレクトリを追加した場合は、以下のコマンドでリンクを作成します：

```bash
cd ~/dotfiles
stow -v <directory-name>
```

## 🗑️ アンインストール

設定を削除する場合は、以下の手順を実行します：

1. シンボリックリンクを削除：

```bash
cd ~/dotfiles
stow -D zsh
stow -D starship
```

2. バックアップから復元（必要な場合）：

```bash
mv ~/.zshrc.bak ~/.zshrc
```

3. インストールしたパッケージを削除（必要な場合）：

```bash
brew bundle cleanup --file ~/dotfiles/Brewfile
```

## 📝 ライセンス

このリポジトリは個人利用を目的としています。

## 🤝 貢献

改善提案やバグ報告は、IssueまたはPull Requestでお願いします。

## 📚 参考リンク

- [GNU Stow](https://www.gnu.org/software/stow/)
- [Homebrew](https://brew.sh/)
- [Starship](https://starship.rs/)
- [fnm](https://github.com/Schniz/fnm)
- [uv](https://github.com/astral-sh/uv)

