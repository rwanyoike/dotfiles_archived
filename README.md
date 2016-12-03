# rwanyoike's dotfiles

Set zsh as your login shell:

    $ chsh -s $(which zsh)

## Initial Setup

First, clone the repo onto your device:

    $ git clone git@github.com:rwanyoike/dotfiles.git ~/.dotfiles

Install [rcm](https://github.com/thoughtbot/rcm) (rc file [dotfile] management):

**Arch Linux:**

[https://aur.archlinux.org/packages/rcm/](https://aur.archlinux.org/packages/rcm/)

**macOS (brew):**

    $ brew tap thoughtbot/formulae
    $ brew install rcm

**Other OS:**

[https://github.com/thoughtbot/rcm#installation](https://github.com/thoughtbot/rcm#installation)

## Link Dotfiles

Install the dotfiles:

    $ env RCRC=$HOME/.dotfiles/rcrc rcup

After the initial installation, you can run `rcup` without the one-time variable `RCRC` being set (`rcup` will symlink the repo's `rcrc` to `~/.rcrc` for future runs of `rcup`).

This command will create symlinks for config files in your home directory. Setting the `RCRC` environment variable tells `rcup` to use standard configuration options:

* Exclude the `README.md` and `LICENSE` files, which are part of the `dotfiles` repository but do not need to be symlinked in.

You can safely run `rcup` multiple times to update:

    $ rcup

You should run `rcup` after pulling a new version of the repository to symlink any new files in the repository.

## $HOME sweet ~/

### Node Version Management

[nvm](https://github.com/creationix/nvm):

    $ git clone https://github.com/creationix/nvm ~/.nvm

### Python Version Management

[pyenv](https://github.com/yyuu/pyenv):

    $ git clone https://github.com/yyuu/pyenv.git ~/.pyenv
    $ git clone https://github.com/yyuu/pyenv-doctor.git ~/.pyenv/plugins/pyenv-doctor
    $ git clone https://github.com/yyuu/pyenv-installer.git ~/.pyenv/plugins/pyenv-installer
    $ git clone https://github.com/yyuu/pyenv-update.git ~/.pyenv/plugins/pyenv-update
    $ git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
    $ git clone https://github.com/yyuu/pyenv-which-ext.git ~/.pyenv/plugins/pyenv-which-ext

To update, run `pyenv update`.

### Ruby Version Management

[rvm](https://github.com/rvm/rvm):

    $ curl -sSL https://get.rvm.io | bash -s stable

To update, run `rvm get stable`.

### Emacs Distribution

[spacemacs](https://github.com/syl20bnr/spacemacs):

    $ git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

### Zsh Plugin Manager

[zplug](https://github.com/zplug/zplug):

    $ git clone https://github.com/zplug/zplug ~/.zplug

To update, run `zplug update`.