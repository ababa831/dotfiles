# Changelog

All notable changes to this dotfiles repository will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2024-12-XX

### Added

- Initial dotfiles setup with GNU Stow and Brewfile
- **install.sh**: Automated setup script for Mac environment
  - Homebrew installation check and setup
  - Brewfile-based package installation
  - Automatic backup of existing `.zshrc`
  - GNU Stow integration for symbolic link management
- **Brewfile**: Package management configuration
  - Core utilities: git, gh, stow, fzf, uv, fnm, starship
  - Zsh plugins: zsh-autosuggestions, zsh-syntax-highlighting
  - GUI applications: Ghostty, OrbStack, Cursor, VS Code, Raycast, Rectangle, Alt-Tab
  - Font: Hack Nerd Font
- **zsh/.zshrc**: Zsh configuration
  - Homebrew environment setup
  - Starship prompt initialization
  - fnm (Node.js version manager) setup with auto-switch on cd
  - uv (Python package manager) with shell completion
  - fzf (fuzzy finder) integration
  - Zsh completion system
  - zsh-autosuggestions plugin
  - zsh-syntax-highlighting plugin
  - Useful aliases (ls, ll, la, g, d)
- **starship/.config/starship.toml**: Modern and clean prompt configuration
  - Directory display with truncation
  - Git branch and status indicators
  - Language version indicators (Python, Node.js, Go, Rust)
  - Docker context display
  - Cloud provider indicators (AWS, GCP)
  - Command duration display (for commands > 2 seconds)
  - Custom character symbols for different shell states

### Structure

```
dotfiles/
├── install.sh          # Setup script
├── Brewfile            # Homebrew packages
├── zsh/
│   └── .zshrc          # Zsh configuration
└── starship/
    └── .config/
        └── starship.toml  # Starship prompt config
```

