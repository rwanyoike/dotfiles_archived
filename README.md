# dotfiles

> There's no place like $HOME

Personal dotfiles.

## Table of Contents

- [Installation](#installation)
  * [Version Management](#version-management)
  * [More Configurations](#more-configurations)
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
# A management suite for dotfiles
# License: BSD
# - Arch Linux: https://aur.archlinux.org/packages/rcm/
# - macOS (brew):
brew tap thoughtbot/formulae
brew install rcm

# zplug, https://github.com/zplug/zplug
# A zsh plugin manager
# License: MIT
# To update `zplug` in the future, run: zplug update
git clone https://github.com/zplug/zplug $HOME/.zplug
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
# NodeJS version management
# License: MIT
# To update `nodenv` in the future, run: nodenv update
git clone https://github.com/nodenv/nodenv $HOME/.nodenv
git clone https://github.com/nodenv/node-build $HOME/.nodenv/plugins/node-build
git clone https://github.com/nodenv/nodenv-update $HOME/.nodenv/plugins/nodenv-update

# pyenv, https://github.com/yyuu/pyenv
# Python version management
# License: MIT
# To update `pyenv` in the future, run: pyenv update
git clone https://github.com/yyuu/pyenv $HOME/.pyenv
git clone https://github.com/yyuu/pyenv-update $HOME/.pyenv/plugins/pyenv-update
git clone https://github.com/yyuu/pyenv-virtualenv $HOME/.pyenv/plugins/pyenv-virtualenv

# rbenv, https://github.com/rbenv/rbenv
# Ruby version management
# License: MIT
# To update `rbenv` in the future, run: rbenv update
git clone https://github.com/rbenv/rbenv $HOME/.rbenv
git clone https://github.com/rbenv/ruby-build $HOME/.rbenv/plugins/ruby-build
git clone https://github.com/rkh/rbenv-update $HOME/.rbenv/plugins/rbenv-update
```

### More Configurations

```bash
# spacemacs, https://github.com/syl20bnr/spacemacs
# A community-driven Emacs distribution
# License: GPLv3
git clone https://github.com/syl20bnr/spacemacs $HOME/.emacs.d

# .tmux, https://github.com/gpakosz/.tmux
# A self-contained, pretty and versatile .tmux.conf configuration file
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

[MIT](LICENSE) © Raymond Wanyoike
