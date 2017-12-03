# dotfiles

> Personal configurations. ಠ_ರೃ

There's no place like `$HOME`.

## Installation

Clone the repository:

```bash
git clone https://github.com/rwanyoike/dotfiles $HOME/.dotfiles
```

Setup management:

```bash
# rcm, https://github.com/thoughtbot/rcm
## (Homebrew):
brew tap thoughtbot/formulae && brew install rcm
## Arch Linux:
# https://aur.archlinux.org/packages/rcm

# zplug, https://github.com/zplug/zplug
git clone https://github.com/zplug/zplug $HOME/.zplug
# To update `zplug`, run: zplug update
```

Symlink the dotfiles:

```bash
env RCRC=$HOME/.dotfiles/rcrc rcup
```

Set your default shell:

```bash
chsh -s $(which zsh) # ┌(ಠ‿ಠ)┘
```

## Environment

### Version Management

```bash
# nodenv, https://github.com/nodenv/nodenv
git clone https://github.com/nodenv/nodenv $HOME/.nodenv
git clone https://github.com/nodenv/node-build $HOME/.nodenv/plugins/node-build
git clone https://github.com/nodenv/nodenv-update $HOME/.nodenv/plugins/nodenv-update
# To update `nodenv`, run: nodenv update

# pyenv, https://github.com/yyuu/pyenv
git clone https://github.com/yyuu/pyenv $HOME/.pyenv
git clone https://github.com/yyuu/pyenv-update $HOME/.pyenv/plugins/pyenv-update
git clone https://github.com/yyuu/pyenv-virtualenv $HOME/.pyenv/plugins/pyenv-virtualenv
# To update `pyenv`, run: pyenv update

# rbenv, https://github.com/rbenv/rbenv
git clone https://github.com/rbenv/rbenv $HOME/.rbenv
git clone https://github.com/rbenv/ruby-build $HOME/.rbenv/plugins/ruby-build
git clone https://github.com/rkh/rbenv-update $HOME/.rbenv/plugins/rbenv-update
# To update `rbenv`, run: rbenv update
```

### Other Configurations

```bash
# spacemacs, https://github.com/syl20bnr/spacemacs
git clone https://github.com/syl20bnr/spacemacs $HOME/.emacs.d

# .tmux, https://github.com/gpakosz/.tmux
git clone https://github.com/gpakosz/.tmux $HOME/.tmux
ln -sf $HOME/.tmux/.tmux.conf $HOME
cp $HOME/.tmux/.tmux.conf.local $HOME
```

## Can I Use Your Files

Sure you can. But should you? :) (these _are_ personal configurations)

## License

[MIT](LICENSE) © 2017 Raymond Wanyoike
