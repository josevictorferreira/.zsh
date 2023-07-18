WORKSPACE="$HOME/Workspace"

# General Applications
alias k=kubectl
alias v=nvim
alias dc=docker-compose
alias d=docker
alias be="bundle exec "

alias be="bundle exec rspec"

# Personal
alias wspc="cd $WORKSPACE"
alias todo="nvim $WORKSPACE/todo.md"
alias plan="nvim $WORKSPACE/plan.md"
alias buy="nvim $WORKSPACE/buy.md"
alias zshrc="nvim $HOME/.zsh/.zshrc"
alias aliases="nvim $HOME/.zsh/aliases.zsh"
alias exer="cd $WORKSPACE/exercism"
alias vigi="cd $WORKSPACE/vigilant-journey"
alias readm="cd $WORKSPACE/readmore-project"

alias cheat="nvim $WORKSPACE/cheat_sheets/linux.md"

# K8s
alias prod="click -n production"
alias stag="click -n staging"

alias set_mini="kubectl config use-context minikube && \
  kubectl config set-context minikube"
