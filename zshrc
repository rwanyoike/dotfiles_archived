# Executes commands at the start of an interactive session.

source ${HOME}/.zplug/init.zsh

# Configuration framework.
zplug "eriner/zim", \
    use:init.zsh, \
    hook-build:"ln -s ${ZPLUG_REPOS}/eriner/zim/ ~/.zim"

# Help remembering aliases.
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="☼ "
zplug "djui/alias-tips"

# Configuration framework.
prezto_modules=(node python ruby)
zplug "sorin-ionescu/prezto", \
    use:"modules/{${(j:,:)prezto_modules}}/init.zsh"

# Manage local plugins.
zplug "${HOME}/.zsh", \
    from:local

# Let zplug manage zplug.
zplug "zplug/zplug", \
    hook-build:"zplug --self-manage"

if ! zplug check; then
    printf "Install Zsh plugins? (y/N): "
    # Install available plugins.
    if read -rq; then
        echo; zplug install
    fi
fi

zplug load
