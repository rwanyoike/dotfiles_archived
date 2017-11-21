# dotfiles

> There's no place like $HOME

Personal dotfiles.

## Table of Contents

- [Installation](#installation)
  * [Version Management](#version-management)
  * [More](#more)
- [Can I Use Your Files?](#can-i-use-your-files)
  * [Contribute](#contribute)
- [License](#license)

## Installation

```bash
# Clone the repo to $HOME/.dotfiles
git clone https://github.com/rwanyoike/dotfiles $HOME/.dotfiles
```

```bash
# rcm, https://github.com/thoughtbot/rcm
# License: BSD
# - macOS (brew):
brew tap thoughtbot/formulae
brew install rcm
# - Arch Linux:
# https://aur.archlinux.org/packages/rcm/

# zplug, https://github.com/zplug/zplug
# License: MIT
git clone https://github.com/zplug/zplug $HOME/.zplug
# To update `zplug`, run: zplug update
```

```bash
# Symlink the dotfiles
env RCRC=$HOME/.dotfiles/rcrc rcup

# Set zsh as Your $bash
chsh -s $(which zsh) # ┌(ಠ‿ಠ)┘
```

### Version Management

```bash
# nodenv, https://github.com/nodenv/nodenv
# License: MIT
git clone https://github.com/nodenv/nodenv $HOME/.nodenv
git clone https://github.com/nodenv/node-build $HOME/.nodenv/plugins/node-build
git clone https://github.com/nodenv/nodenv-update $HOME/.nodenv/plugins/nodenv-update
# To update `nodenv`, run: nodenv update

# pyenv, https://github.com/yyuu/pyenv
# License: MIT
git clone https://github.com/yyuu/pyenv $HOME/.pyenv
git clone https://github.com/yyuu/pyenv-update $HOME/.pyenv/plugins/pyenv-update
git clone https://github.com/yyuu/pyenv-virtualenv $HOME/.pyenv/plugins/pyenv-virtualenv
# To update `pyenv`, run: pyenv update

# rbenv, https://github.com/rbenv/rbenv
# License: MIT
git clone https://github.com/rbenv/rbenv $HOME/.rbenv
git clone https://github.com/rbenv/ruby-build $HOME/.rbenv/plugins/ruby-build
git clone https://github.com/rkh/rbenv-update $HOME/.rbenv/plugins/rbenv-update
# To update `rbenv`, run: rbenv update
```

### More

```bash
# spacemacs, https://github.com/syl20bnr/spacemacs
# License: GPLv3
git clone https://github.com/syl20bnr/spacemacs $HOME/.emacs.d

# .tmux, https://github.com/gpakosz/.tmux
# License: WTFPLv2/MIT
git clone https://github.com/gpakosz/.tmux $HOME/.tmux
ln -sf $HOME/.tmux/.tmux.conf $HOME
cp $HOME/.tmux/.tmux.conf.local $HOME
```

## Can I Use Your Files?

Sure you can. But should you? :) (these _are_ personal configurations)

### Contribute

Feel free to dive in. [Open an issue](https://github.com/rwanyoike/dotfiles/issues/new) or submit a PR.

## License

[MIT](LICENSE) © 2017 Raymond Wanyoike
