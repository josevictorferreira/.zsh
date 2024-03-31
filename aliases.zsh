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

alias ber="bundle exec rspec "

# Personal
alias wspc="cd $WORKSPACE"
alias todo="nvim $WORKSPACE/todo.md"
alias ideas="nvim $NOTETAKING_FOLDER/ideas/Ideas.md"

alias plan="nvim $WORKSPACE/plan.md"
alias buy="nvim $WORKSPACE/buy.md"
alias zshrc="nvim $HOME/.zsh/.zshrc"
alias aliases="nvim $HOME/.zsh/aliases.zsh"
alias exer="cd $WORKSPACE/exercism"
alias readm="cd $WORKSPACE/readmore-project"
alias rinha="cd $WORKSPACE/rinha-backend"
alias hs="cd $WORKSPACE/homeserver"

# K8s
alias prod="click -n production"
alias stag="click -n staging"

alias set_mini="kubectl config use-context minikube && \
  kubectl config set-context minikube"
