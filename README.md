# rwanyoike's dotfiles

Your terminal shell may become the talk of the town!

## Install [rcm](https://github.com/thoughtbot/rcm) (rc file management)

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

## Clone the repository

    $ git clone https://github.com/rwanyoike/dotfiles.git $HOME/.dotfiles

## Symlink the dotfiles

This command will update and install the dotfiles:

    $ env RCRC=$HOME/.dotfiles/rcrc rcup

Setting the `RCRC` environment variable tells `rcup` to use the configuration options in `$HOME/.dotfiles/rcrc`:

* Exclude the `README.md` and `LICENSE` files, which are part of the `dotfiles` repository but do not need to be symlinked in.

After the initial installation, you can run `rcup` without the one-time variable `RCRC` being set (`rcup` will symlink the repo's `rcrc` to `$HOME/.rcrc` for future runs of `rcup`).

You can safely run `rcup` multiple times to update.

## Set Zsh as your shell

    $ chsh -s $(which zsh)

Install [zplug](https://github.com/zplug/zplug) - A Zsh plugin manager:

    $ git clone https://github.com/zplug/zplug $HOME/.zplug

To update `zplug` in the future, run:

    $ zplug update

Log out and login back again to use your new shell.

Great success!

---

## Tools that live in `$HOME`

### Version management

Command-line tools that allow you to easily install, manage, and work with multiple "language" environments and enables switching between them.

#### Node version management

[nvm](https://github.com/creationix/nvm) - Node Version Manager:

    $ git clone https://github.com/creationix/nvm $HOME/.nvm

<!-- -->

    $ nvm --version
    x.x.x

To update `nvm` in the future, run:

    $ (cd $HOME/.nvm; git pull)

#### Python version management

[pyenv](https://github.com/yyuu/pyenv) - Python version management:

    $ curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

<!-- -->

    $ pyenv --version
    pyenv x.x.x

To update `pyenv` in the future, run:

    $ pyenv update

#### Ruby version management

[rvm](https://github.com/rvm/rvm) - Ruby enVironment Manager:

    $ curl -sSL https://get.rvm.io | bash -s stable

<!-- -->

    $ rvm --version
    rvm x.x.x

To update `rvm` in the future, run:

    $ rvm get stable

### Misc configurations

#### Emacs distribution

[spacemacs](https://github.com/syl20bnr/spacemacs) - A community-driven Emacs distribution:

    $ git clone https://github.com/syl20bnr/spacemacs $HOME/.emacs.d

The best editor is neither Emacs nor Vim, it's Emacs and Vim.

#### Tmux configuration

[.tmux](https://github.com/gpakosz/.tmux) - A self-contained, pretty and versatile tmux configuration file:

    $ git clone https://github.com/gpakosz/.tmux.git $HOME/.tmux
    $ ln -sf $HOME/.tmux/.tmux.conf
    $ cp $HOME/.tmux/.tmux.conf.local $HOME
