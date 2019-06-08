# See: https://github.com/syndbg/goenv

export GOENV_GOPATH_PREFIX="${HOME}/SRC/golang"
export PATH="${HOME}/.goenv/bin:${PATH}"
if command -v goenv &> /dev/null; then
  eval "$(goenv init -)"
  export PATH="${GOROOT}/bin:${PATH}"
  export PATH="${GOPATH}/bin:${PATH}"
fi
