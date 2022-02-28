
run_livebook () {
  docker run -p 8080:8080 --pull always -u $(id -u):$(id -g) -v $(pwd):/data livebook/livebook
}

function b64() {
  echo -n "$1" | base64 -w 0 | xclip -sel clip
}
