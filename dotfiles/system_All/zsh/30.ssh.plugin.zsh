# Ref: https://github.com/kovidgoyal/kitty/issues/1791
#      https://github.com/kovidgoyal/kitty/issues/2475

if command -v ssh &> /dev/null; then
  alias ssh="TERM=xterm-256color ssh"
fi
