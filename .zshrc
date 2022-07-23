# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export EDITOR='nvim'
export VISUAL='nvim'

export PATH=$HOME/.cache/rebar3/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
source $HOME/.cargo/env
export NODE_OPTIONS=--openssl-legacy-provider

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
  git
  zsh-completions
  fast-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

source $HOME/.zsh/aliases.zsh
source $HOME/.zsh/functions.zsh
source $HOME/.zsh/secrets.zsh

# Add asdf
. /opt/asdf-vm/asdf.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source <(kubectl completion zsh)

compdef __start_kubectl k

bindkey -v
