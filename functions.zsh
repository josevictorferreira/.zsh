
## Automatically creates and runs a phoenix livebook container
run_livebook () {
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
