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

And break it down:

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
# (pyenv|rbenv|nodenv|goenv) install x.x.x
# (pyenv|rbenv|nodenv|goenv) global x.x.x

pip install --requirement ~/.packages-python.txt

# Install https://github.com/yarnpkg/yarn
xargs yarn global add < ~/.packages-node.txt
```

### macOS

```bash
# Install https://github.com/Homebrew/brew
brew bundle install --file=~/.packages-brew.txt

# Install https://github.com/NixOS/nix
nix-env --install --file ~/.packages-nixpkgs.nix
```

### Arch Linux

```bash
sudo localectl set-locale en_US.UTF-8
sudo timedatectl set-ntp true

sudo pacman -S --needed - < ~/.packages-pacman.txt
# Install https://aur.archlinux.org/packages/yay
yay -S - < ~/.packages-aur.txt
```
