if type bat > /dev/null; then
  export MANPAGER="sh -c 'col -bx | bat -l man -p'"
  export BAT_STYLE=plain

  if ! [[ "$PATH" = "$HOME/bin"* ]]; then
    echo "Warning: Placing symlink for bat in $HOME/bin, but directory not found on PATH" >&2
  fi
  
  mkdir -p "$HOME/bin"
  ln -s "$(command -v bat)" "$HOME/bin/cat"
else
  echo "Error: Please install bat before loading ZSH plugin"
fi

