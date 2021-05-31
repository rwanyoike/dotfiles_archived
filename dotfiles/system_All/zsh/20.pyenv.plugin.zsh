# Ref: https://github.com/pyenv/pyenv

export PATH="${HOME}/.pyenv/bin:${PATH}"
if command -v pyenv &> /dev/null; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi
