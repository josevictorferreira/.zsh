WORKSPACE="$HOME/Workspace"
SHARED_FOLDER="/mnt/shared_storage_1"
NOTETAKING_FOLDER="$SHARED_FOLDER/notetaking"

# Sudo using environment config
alias sudo='sudo -E'
alias s='sudo -E'

# General Applications
alias k=kubectl
alias v=nvim
alias dc=docker-compose
alias d=docker
alias be="bundle exec "
alias m="make "
alias ls="ls --color "

alias rtmux="tmux source-file ~/.config/tmux/tmux.conf"

alias ber="bundle exec rspec "

# Personal
alias wspc="cd $WORKSPACE"
alias ideas="nvim $NOTETAKING_FOLDER/ideas/Ideas.md"
alias todo="nvim $NOTETAKING_FOLDER/checklists/Todo.md"
alias notes="nvim $NOTETAKING_FOLDER/notes/Notes.md"

alias plan="nvim $WORKSPACE/plan.md"
alias buy="nvim $WORKSPACE/buy.md"
alias zshrc="nvim $HOME/.zsh/.zshrc"
alias aliases="nvim $HOME/.zsh/aliases.zsh"
alias secrets="nvim $HOME/.zsh/secrets.zsh"
alias exer="cd $WORKSPACE/exercism"
alias readm="cd $WORKSPACE/readmore-project"
alias rinha="cd $WORKSPACE/rinha-backend"
alias hs="cd $WORKSPACE/homeserver"
alias vista="cd $WORKSPACE/vista-valor"

alias parufind="paru -Slq | fzf --multi --preview 'paru -Si {}' | xargs -ro paru -S"

alias sysup="paru -Sua"

# K8s
alias prod="k9s -n production"
alias stag="k9s -n staging"

alias set_mini="kubectl config use-context minikube && \
  kubectl config set-context minikube"
