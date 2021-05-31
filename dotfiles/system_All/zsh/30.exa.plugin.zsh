# Ref: https://github.com/ogham/exa

if command -v exa &> /dev/null; then
  alias ls="exa --group-directories-first"
  # Aliases adapted from https://github.com/zimfw/zimfw
  alias  l="ls --long --group --git --all" # all files, human-readable sizes
  alias ll="ls --long --group --git" # human-readable sizes
  alias lr="ll --recurse" # human-readable sizes, recursive
  alias lx="ll --sort=extension" # human-readable sizes, sort by extension
  alias lk="ll --sort=size" # human-readable sizes, largest last
  alias lt="ll --sort=modified" # human-readable sizes, most recent last
  alias lc="lt --sort=created" # human-readable sizes, most recent last, change time
fi
