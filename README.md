rwanyoike's dotfiles
====================

> $HOME sweet ~/

Requirements
------------

Set zsh as your login shell:

    chsh -s $(which zsh)

Initial Setup
-------------

Clone this onto your device:

    $ git clone git@github.com:rwanyoike/dotfiles.git ~/dotfiles

Install [rcm](https://github.com/thoughtbot/rcm) (rc file [dotfile] management):

**Arch Linux:**

[https://aur.archlinux.org/packages/rcm/](https://aur.archlinux.org/packages/rcm/)

**macOS (brew):**

    $ brew tap thoughtbot/formulae
    $ brew install rcm

**Other OS:**

[https://github.com/thoughtbot/rcm#installation](https://github.com/thoughtbot/rcm#installation)

Link Dotfiles
-------------

Install the dotfiles:

    $ env RCRC=$HOME/.dotfiles/rcrc rcup

After the initial installation, you can run `rcup` without the one-time
variable `RCRC` being set (`rcup` will symlink the repo's `rcrc` to `~/.rcrc`
for future runs of `rcup`).

This command will create symlinks for config files in your home directory.
Setting the `RCRC` environment variable tells `rcup` to use standard
configuration options:

* Exclude the `README.md` and `LICENSE` files, which are part of the `dotfiles`
repository but do not need to be symlinked in.

You can safely run `rcup` multiple times to update:

    $ rcup

You should run `rcup` after pulling a new version of the repository to symlink
any new files in the repository.
