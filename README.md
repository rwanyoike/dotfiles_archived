<h1 align="center">
  <img src="https://i.imgur.com/rEM1ASC.png" alt="dotfiles">
</h1>

## Requirements

- `git`
- `zsh`

## Installation

Clone the repository:

```bash
git clone <REPO_URL> ~/.dotfiles
```

Run `provision.sh`:

```bash
bash ~/.dotfiles/provision.sh
```

Set your default shell:

```bash
chsh --shell $(which zsh) # ┌(ಠ‿ಠ)┘
```

## Post Install

### All Systems

```bash
# Version management
(pyenv|rbenv|nodenv|goenv) install --list
(pyenv|rbenv|nodenv|goenv) install <version>
(pyenv|rbenv|nodenv|goenv) global <version>
```

```bash
# Python packages
pip install --requirement ~/.packages-pip.txt

# Node packages
# Install https://github.com/yarnpkg/yarn
xargs yarn global add < ~/.packages-npm.txt
```

### macOS

```bash
# Brew packages
# Install https://github.com/Homebrew/brew
brew bundle install --file=~/.packages-brew.txt

# Nix packages
# Install https://github.com/NixOS/nix
nix-env --install --file ~/.packages-nix.nix
```

### Arch Linux

```bash
# Pacman packages
sudo pacman -S --needed - < ~/.packages-pacman.txt

# AUR packages
# Install https://aur.archlinux.org/packages/yay
yay -S - < ~/.packages-aur.txt
```
