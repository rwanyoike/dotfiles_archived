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

#### Version Management

```bash
(pyenv|rbenv|nodenv|goenv) install --list
(pyenv|rbenv|nodenv|goenv) install <version>
(pyenv|rbenv|nodenv|goenv) global <version>
```

#### Python Packages

```bash
pip install --user pipx
xargs -L1 pipx install < ~/.packages/pip.txt
```

#### Node Packages

```bash
# Install https://github.com/yarnpkg/yarn
xargs yarn global add < ~/.packages/npm.txt
```

### macOS

#### Brew Packages

```bash
# Install https://github.com/Homebrew/brew
brew bundle install --file=~/.packages/brew.txt
```

#### Nix Packages

```bash
# Install https://github.com/NixOS/nix
nix-env --install --file ~/.packages/nix.nix
```

### Arch Linux

#### Pacman Packages

```bash
sudo pacman -S --needed - < ~/.packages/pacman.txt
```

#### AUR Packages

```bash
# Install https://aur.archlinux.org/packages/yay
yay -S - < ~/.packages/aur.txt
```
