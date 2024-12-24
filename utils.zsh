## Automatically creates and runs a phoenix livebook container
function run_livebook () {
  docker run -p 8080:8080 --pull always -u $(id -u):$(id -g) -v $(pwd):/data livebook/livebook
}

## Convert a given text string to base64, automatically copies to clipboard
function b64() {
  echo -n "$1" | base64 -w 0 | xclip -sel clip
}

function bb64() {
  echo -n "$1" | base64 -d
}

## Automatically updates neovim
function update_neovim() {
  asdf plugin update neovim && asdf uninstall neovim nightly && asdf install neovim nightly
}

## Switch kubernetes contexts
function ksc() {
  contexts=$(kubectl config get-contexts -o name)
  selected_context=$(echo "${contexts}" | fzf)

  if [ -n "$selected_context" ]; then
    kubectl config use-context "$selected_context"
  else
    echo "No context selected."
  fi
}


# Nix OS
function rebuild() {
  cd ~/Nix
  sudo nixos-rebuild switch --flake .#josevictor-nixos
  cd -
}
