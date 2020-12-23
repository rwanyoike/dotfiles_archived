# See: http://zsh.sourceforge.net/Doc/Release/Parameters.html
#      http://zsh.sourceforge.net/Doc/Release/Options.html
export HISTSIZE=90000
export SAVEHIST="${HISTSIZE}"
export HISTFILE="${HOME}/Sync/zhistory"

# See: https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"

# See: https://wiki.archlinux.org/index.php/Environment_variables
export VISUAL=vim
export EDITOR="${VISUAL}"

# Ref: https://github.com/swaywm/sway/issues/3716#issuecomment-503991671
export vblank_mode=0
