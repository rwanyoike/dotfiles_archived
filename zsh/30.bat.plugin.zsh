# See: https://github.com/sharkdp/bat

if hash bat 2> /dev/null; then
    alias cat="bat"
fi
