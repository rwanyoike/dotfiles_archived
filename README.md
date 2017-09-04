# dotfiles

> There is no place like ~/

Localhost. 🙌

## Table of Contents

- [Installation](#installation)
    - [Install rcm (rc File Management)](#install-rcm-rc-file-management)
    - [Symlink the Dotfiles](#symlink-the-dotfiles)
    - [Install zplug](#install-zplug)
    - [Set zsh as Your $SHELL](#set-zsh-as-your-shell)
- [Version Management](#version-management)
    - [Node](#node)
    - [Python](#python)
    - [Ruby](#ruby)
- [Extra Configurations](#extra-configurations)
    - [Emacs](#emacs)
    - [Tmux](#tmux)
- [Can I Use Your Files?](#can-i-use-your-files)
    - [Contribute](#contribute)
- [License](#license)

## Installation

Clone the repo to `$HOME/.dotfiles`:

    $ git clone https://github.com/rwanyoike/dotfiles $HOME/.dotfiles

### Install rcm (rc File Management)

[rcm](https://github.com/thoughtbot/rcm) - A management suite for dotfiles:

**Arch Linux:**

    https://aur.archlinux.org/packages/rcm/

**macOS (brew):**

    $ brew tap thoughtbot/formulae
    $ brew install rcm

**Debian:**

    $ wget https://thoughtbot.github.io/rcm/debs/rcm_1.3.0-1_all.deb
    $ sudo dpkg -i rcm_1.3.0-1_all.deb

**Other OS:**

[https://github.com/thoughtbot/rcm#installation](https://github.com/thoughtbot/rcm#installation)

### Symlink the Dotfiles

This command updates and installs the dotfiles:

    $ env RCRC=$HOME/.dotfiles/rcrc rcup

### Install zplug

[zplug](https://github.com/zplug/zplug) - A zsh plugin manager:

    $ git clone https://github.com/zplug/zplug $HOME/.zplug

To update `zplug` in the future, run:

    $ zplug update

### Set zsh as Your $SHELL

    $ chsh -s $(which zsh)

Logout & login to use your new shell.

## Version Management

### Node

[nodenv](https://github.com/nodenv/nodenv) - NodeJS version management:

    $ git clone https://github.com/nodenv/nodenv $HOME/.nodenv
    $ git clone https://github.com/nodenv/node-build $HOME/.nodenv/plugins/node-build
    $ git clone https://github.com/nodenv/nodenv-update $HOME/.nodenv/plugins/nodenv-update

To update `nodenv` in the future, run:

    $ nodenv update

License: MIT

### Python

[pyenv](https://github.com/yyuu/pyenv) - Python version management:

    $ git clone https://github.com/yyuu/pyenv $HOME/.pyenv
    $ git clone https://github.com/yyuu/pyenv-update $HOME/.pyenv/plugins/pyenv-update
    $ git clone https://github.com/yyuu/pyenv-virtualenv $HOME/.pyenv/plugins/pyenv-virtualenv

To update `pyenv` in the future, run:

    $ pyenv update

License: MIT

### Ruby

[rbenv](https://github.com/rbenv/rbenv) - Ruby version management:

    $ git clone https://github.com/rbenv/rbenv $HOME/.rbenv
    $ git clone https://github.com/rbenv/ruby-build $HOME/.rbenv/plugins/ruby-build
    $ git clone https://github.com/rkh/rbenv-update $HOME/.rbenv/plugins/rbenv-update

To update `rbenv` in the future, run:

    $ rbenv update

License: MIT

## Extra Configurations

### Emacs

[spacemacs](https://github.com/syl20bnr/spacemacs) - A community-driven Emacs distribution:

    $ git clone https://github.com/syl20bnr/spacemacs $HOME/.emacs.d

License: GPLv3

### Tmux

[.tmux](https://github.com/gpakosz/.tmux) - A self-contained, pretty and versatile .tmux.conf configuration file:

    $ git clone https://github.com/gpakosz/.tmux $HOME/.tmux
    $ ln -sf $HOME/.tmux/.tmux.conf
    $ cp $HOME/.tmux/.tmux.conf.local $HOME

License: WTFPLv2/MIT

## Can I Use Your Files?

Sure you can. But should you? :D (these _are_ personal configurations)

### Contribute

Feel free to dive in. [Open an issue](https://github.com/rwanyoike/dotfiles/issues/new) or submit a PR.

## License

[MIT](LICENSE) © Raymond Wanyoike
