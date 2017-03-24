source ~/.zplug/init.zsh

# Configuration framework
prezto_modules=('node' 'python' 'ruby')
zplug "zsh-users/prezto", \
    use:"modules/{${(j:,:)prezto_modules}}/init.zsh"

# Help remembering aliases
zplug "djui/alias-tips"

# k is the new l, yo
zplug "supercrabtree/k"

# Manage local plugins
zplug "$HOME/.zsh", from:local

# Configuration framework
zplug "eriner/zim", \
    use:init.zsh, \
    hook-build:"ln -s $ZPLUG_REPOS/eriner/zim/ ~/.zim"

# Let zplug manage zplug
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# Install available plugins
if ! zplug check; then
    printf "Install Zsh plugins? (y/N): "
    if read -rq; then
        echo; zplug install
    fi
fi

zplug load
