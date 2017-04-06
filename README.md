# dotfiles

> $ mkdir hammerTime; chmod 500 hammerTime; cd $_; touch this

Local dotfiles. 🙌

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

### Symlink the dotFiles

This command updates and installs the dotfiles:

    $ env RCRC=$HOME/.dotfiles/rcrc rcup

Setting the `RCRC` environment variable tells `rcup` to use the configuration options in `$HOME/.dotfiles/rcrc`.

After the initial installation, you can run `rcup` without the one-time variable `RCRC` being set (`rcup` will symlink the repo's `rcrc` to `$HOME/.rcrc` for future runs of `rcup`).

You can safely run `rcup` multiple times to update.

### Set Zsh as $SHELL

    $ chsh -s $(which zsh)

Install [zplug](https://github.com/zplug/zplug) - A Zsh plugin manager:

    $ git clone https://github.com/zplug/zplug $HOME/.zplug

To update `zplug` in the future, run:

    $ zplug update

Logout and login back again to use your new shell.

## Usage

### Version Management

Command-line tools that allow you to easily install, manage, and work with multiple "language" environments and enables switching between them.

#### With Node

[nvm](https://github.com/creationix/nvm) - Node Version Manager:

    $ git clone https://github.com/creationix/nvm $HOME/.nvm

<!-- -->

    $ nvm --version
    x.x.x

To update `nvm` in the future, run:

    $ nvm upgrade

#### With Python

[pyenv](https://github.com/yyuu/pyenv) - Python version management:

    $ curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

<!-- -->

    $ pyenv --version
    pyenv x.x.x

To update `pyenv` in the future, run:

    $ pyenv update

#### With Ruby

[rvm](https://github.com/rvm/rvm) - Ruby enVironment Manager:

    $ curl -sSL https://get.rvm.io | bash -s stable

<!-- -->

    $ rvm --version
    rvm x.x.x

To update `rvm` in the future, run:

    $ rvm get stable

### Misc Configurations

#### Emacs Distribution

[spacemacs](https://github.com/syl20bnr/spacemacs) - A community-driven Emacs distribution:

    $ git clone https://github.com/syl20bnr/spacemacs $HOME/.emacs.d

> The best editor is neither Emacs nor Vim, it's Emacs and Vim.

#### Tmux Configuration

[.tmux](https://github.com/gpakosz/.tmux) - A self-contained, pretty and versatile tmux configuration file:

    $ git clone https://github.com/gpakosz/.tmux.git $HOME/.tmux
    $ ln -sf $HOME/.tmux/.tmux.conf
    $ cp $HOME/.tmux/.tmux.conf.local $HOME

## Maintainers

- [@rwanyoike](https://github.com/rwanyoike)

## Contribute

Feel free to dive in. [Open an issue](https://github.com/rwanyoike/dotfiles/issues/new) or submit a PR.

## License

[MIT](LICENSE) © Raymond Wanyoike
