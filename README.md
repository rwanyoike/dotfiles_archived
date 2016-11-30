# rwanyoike's dotfiles

Set zsh as your login shell:

    $ chsh -s $(which zsh)

# Initial Setup

First, clone the repo onto your device:

    $ git clone git@github.com:rwanyoike/dotfiles.git ~/dotfiles

Install [rcm](https://github.com/thoughtbot/rcm) (rc file [dotfile] management):

**Arch Linux:**

[https://aur.archlinux.org/packages/rcm/](https://aur.archlinux.org/packages/rcm/)

**macOS (brew):**

    $ brew tap thoughtbot/formulae
    $ brew install rcm

**Other OS:**

[https://github.com/thoughtbot/rcm#installation](https://github.com/thoughtbot/rcm#installation)

# Link Dotfiles

Install the dotfiles:

    $ env RCRC=$HOME/.dotfiles/rcrc rcup

After the initial installation, you can run `rcup` without the one-time variable `RCRC` being set (`rcup` will symlink the repo's `rcrc` to `~/.rcrc` for future runs of `rcup`).

This command will create symlinks for config files in your home directory. Setting the `RCRC` environment variable tells `rcup` to use standard configuration options:

* Exclude the `README.md` and `LICENSE` files, which are part of the `dotfiles` repository but do not need to be symlinked in.

You can safely run `rcup` multiple times to update:

    $ rcup

You should run `rcup` after pulling a new version of the repository to symlink any new files in the repository.

# $HOME sweet ~/

[nvm](https://github.com/creationix/nvm) - Node version management:

    $ curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash

[pyenv](https://github.com/yyuu/pyenv) - Python version management:

    $ curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

[rvm](https://github.com/rvm/rvm) - Ruby version management:

    $ \curl -sSL https://get.rvm.io | bash -s stable

[spacemacs](https://github.com/syl20bnr/spacemacs) - A community-driven Emacs distribution:

    $ git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

[zplug](https://github.com/zplug/zplug) - A next-generation plugin manager for zsh:

    $ curl -sL zplug.sh/installer | zsh
