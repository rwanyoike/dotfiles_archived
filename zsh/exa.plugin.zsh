# https://github.com/ogham/exa

if hash exa 2> /dev/null; then
    # Aliases adapted from zim.
    alias l="exa --long --all --group"  # all files, human-readable sizes
    [[ -n ${PAGER} ]] && alias lm="l | ${PAGER}" # all files, human-readable sizes, use pager
    alias ll="exa --long --group"       # human-readable sizes
    alias lr="ll --recurse"             # human-readable sizes, recursive
    alias lx="ll --sort=extension"      # human-readable sizes, sort by extension
    alias lk="ll --sort=size"           # human-readable sizes, largest last
    alias lt="ll --sort=modified"       # human-readable sizes, most recent last
    alias lc="lt --sort=created"        # human-readable sizes, most recent last, change time
fi
