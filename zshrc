# Executes commands at the start of an interactive session.

source "${HOME}/.zplug/init.zsh"

# Configuration framework.
zplug "eriner/zim", \
    hook-build:"ln -s ${ZPLUG_REPOS}/eriner/zim/ ~/.zim", \
    depth:1

# Help remembering aliases.
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="☼ "
zplug "djui/alias-tips", \
    depth:1

# Configuration framework.
PREZTO_MODULES=(node python ruby)
zplug "sorin-ionescu/prezto", \
    use:"modules/{${(j:,:)PREZTO_MODULES}}/init.zsh", \
    depth:1

# Manage local plugins.
zplug "${HOME}/.zsh", \
    from:local

# Let zplug manage zplug.
zplug "zplug/zplug", \
    hook-build:"zplug --self-manage", \
    depth:1

if ! zplug check; then
    printf "Install Zsh plugins? (y/N): "
    # Install available plugins.
    if read -rq; then
        echo; zplug install
    fi
fi

zplug load
