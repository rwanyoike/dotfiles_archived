# Ref: https://github.com/funtoo/keychain

if command -v keychain &> /dev/null; then
  eval "$(keychain --eval)"
fi
