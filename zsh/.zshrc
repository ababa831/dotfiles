# ----- 1. Homebrew & Path -----
eval "$(/opt/homebrew/bin/brew shellenv)"

# ----- 2. Tools Initialization -----
# Starship (Prompt)
eval "$(starship init zsh)"

# fnm (Node.js)
eval "$(fnm env --use-on-cd)"

# uv (Python) - 補完有効化
eval "$(uv generate-shell-completion zsh)"

# fzf (Fuzzy Finder)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source <(fzf --zsh)

# ----- 3. Zsh Options & Completion -----
# 補完機能を有効化
autoload -Uz compinit && compinit

# zsh-autosuggestions (入力補完)
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-syntax-highlighting (ハイライト) - 必ず最後に記述
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ----- 4. Aliases -----
alias ls='ls -G'
alias ll='ls -lG'
alias la='ls -laG'
alias g='git'
alias d='docker' # OrbStackでもdockerコマンドを使うため

