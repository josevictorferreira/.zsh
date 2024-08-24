# Standard OS Variables
export EDITOR='nvim'
export VISUAL='nvim'
export BROWSER='brave'
export PATH=/opt/homebrew/bin:$PATH

## Autocomplete Settings
HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
bindkey -v
bindkey '^R' history-incremental-search-backward
bindkey '^P' history-substring-search-up
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^N' history-substring-search-down
bindkey '^[[A' forward-char

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

eval "$(fzf --zsh)"
