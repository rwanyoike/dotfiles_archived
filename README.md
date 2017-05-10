# dotfiles

> There is no place like ~

Localhost. 🙌

## Installation

Clone the repo to `$HOME/.dotfiles`:

    $ git clone https://github.com/rwanyoike/dotfiles.git $HOME/.dotfiles

### Install [rcm](https://github.com/thoughtbot/rcm) (rc File Management)

A management suite for dotfiles.

**Arch Linux:**

[https://aur.archlinux.org/packages/rcm/](https://aur.archlinux.org/packages/rcm/)

**macOS (brew):**

    $ brew tap thoughtbot/formulae
    $ brew install rcm

**Debian:**

    $ wget https://thoughtbot.github.io/rcm/debs/rcm_1.3.0-1_all.deb
    $ sudo dpkg -i rcm_1.3.0-1_all.deb

**Other OS:**

[https://github.com/thoughtbot/rcm#installation](https://github.com/thoughtbot/rcm#installation)

### Symlink the dotfiles

This command updates and installs the dotfiles:

    $ env RCRC=$HOME/.dotfiles/rcrc rcup

### Install [zplug](https://github.com/zplug/zplug)

A Zsh plugin manager:

    $ git clone https://github.com/zplug/zplug $HOME/.zplug

To update `zplug` in the future, run:

    $ zplug update

### Set Zsh as your $SHELL

    $ chsh -s $(which zsh)

Logout and login to use your new shell.

### Version Management

#### Node

[nvm](https://github.com/creationix/nvm) - Node Version Manager:

    $ git clone https://github.com/creationix/nvm $HOME/.nvm

To update `nvm` in the future, run:

    $ nvm upgrade

#### Python

[pyenv](https://github.com/yyuu/pyenv) - Python version management:

    $ curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

To update `pyenv` in the future, run:

    $ pyenv update

#### Ruby

[rvm](https://github.com/rvm/rvm) - Ruby enVironment Manager:

    $ curl -sSL https://get.rvm.io | bash -s stable

To update `rvm` in the future, run:

    $ rvm get stable

### Misc Configurations

#### Emacs

[spacemacs](https://github.com/syl20bnr/spacemacs) - A community-driven Emacs distribution:

    $ git clone https://github.com/syl20bnr/spacemacs $HOME/.emacs.d

#### Tmux

[.tmux](https://github.com/gpakosz/.tmux) - A self-contained, pretty and versatile tmux configuration file:

    $ git clone https://github.com/gpakosz/.tmux.git $HOME/.tmux
    $ ln -sf $HOME/.tmux/.tmux.conf
    $ cp $HOME/.tmux/.tmux.conf.local $HOME

## Contribute

Feel free to dive in. [Open an issue](https://github.com/rwanyoike/dotfiles/issues/new) or submit a PR.

## License

[MIT](LICENSE) © Raymond Wanyoike
