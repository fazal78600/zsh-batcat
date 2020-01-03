if type bat > /dev/null; then
  export MANPAGER="sh -c 'col -bx | bat -l man -p'"
  export BAT_STYLE=plain

  alias cat='bat --pager=never'
else
  echo "Error: Please install bat before loading ZSH plugin" >&2
fi

