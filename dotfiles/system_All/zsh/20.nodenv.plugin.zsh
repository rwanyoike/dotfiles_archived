# Ref: https://github.com/nodenv/nodenv

export PATH="${HOME}/.nodenv/bin:${PATH}"
if command -v nodenv &> /dev/null; then
  eval "$(nodenv init -)"
fi
