# tramp-mode: Disable fancy shell
[[ $TERM == "dumb" ]] && \
    unsetopt zle && \
    PS1="$ " && \
    return

source "${HOME}/.zplug/init.zsh"

zplug "eriner/zim", \
    hook-build:"ln -s ${ZPLUG_REPOS}/eriner/zim ${HOME}/.zim"

export ZSH_PLUGINS_ALIAS_TIPS_TEXT="☼ "
zplug "djui/alias-tips"

PREZTO_MODULES=(node python ruby)
zplug "sorin-ionescu/prezto", \
    use:"modules/{${(j:,:)PREZTO_MODULES}}/init.zsh"

zplug "${HOME}/.zsh", \
    from:local

if ! zplug check; then
    printf "Install Zsh plugins? (y/N): "
    # Install available plugins
    if read -rq; then
        echo; zplug install
    fi
fi

zplug load
