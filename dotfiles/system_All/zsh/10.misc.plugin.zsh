# Ref: http://zsh.sourceforge.net/Doc/Release/Parameters.html
# The file to save the history in when an interactive shell exits
HISTFILE="${HOME}/Sync/zhistory"
# The maximum number of events stored in the internal history list
HISTSIZE=51200
# The maximum number of history events to save in the history file
SAVEHIST="${HISTSIZE}"

# Ref: http://zsh.sourceforge.net/Doc/Release/Options.html
# When writing out the history file, older commands that duplicate newer ones are omitted
setopt HIST_SAVE_NO_DUPS

# Ref: https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html
# Selects  keymap  'emacs'  for  any operations by the current command
bindkey -e

# Ref: https://github.com/zsh-users/zsh-history-substring-search
# Bind zsh-history-substring-search shortcuts
bindkey "${terminfo[kcuu1]}" history-substring-search-up
bindkey "${terminfo[kcud1]}" history-substring-search-down

# Ref: https://zsh.sourceforge.io/Doc/Release/User-Contributions.html
# Improve on-line help provided by the shell
unalias run-help
autoload -U run-help

# Ref: https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
#      https://wiki.archlinux.org/title/XDG_Base_Directory
# Where user-specific configurations should be written
export XDG_CONFIG_HOME="${HOME}/.config"
# Where user-specific non-essential (cached) data should be written
export XDG_CACHE_HOME="${HOME}/.cache"
# Where user-specific data files should be written
export XDG_DATA_HOME="${HOME}/.local/share"
# Where user-specific state files should be written
export XDG_STATE_HOME="${HOME}/.local/state"

# Ref: https://wiki.archlinux.org/index.php/Environment_variables
# Command to run the lightweight program used for editing files
export EDITOR=vim
# Command to run the full-fledged editor that is used for more demanding tasks
export VISUAL="${EDITOR}"

# Ref: https://github.com/swaywm/sway/issues/3716#issuecomment-503991671
export vblank_mode=0

# Ref: https://github.com/zsh-users/zsh-syntax-highlighting
export ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets line)
# Ref: https://github.com/djui/alias-tips
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="☼ "
