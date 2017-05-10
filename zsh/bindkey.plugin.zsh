#
# http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html
#

# [Ctrl-r] - Search backward incrementally for a specified string. The string
# may begin with ^ to anchor the search to the beginning of the line.
bindkey "^R" history-incremental-search-backward

# Emacs style
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
