<h1 align="center">
  <img src="https://i.imgur.com/rEM1ASC.png" alt="dotfiles">
</h1>

> There's no place like `${HOME}`. ಠ_ರೃ

## Requirements

None

## Installation

Clone the repository:

```shell
git clone https://github.com/rwanyoike/dotfiles "${HOME}/.dotfiles"
```

Break it down:

```shell
bash "${HOME}/.dotfiles/provision.sh"
```

Set your default shell:

```shell
chsh --shell "$(which zsh)" # ┌(ಠ‿ಠ)┘
```

## Post Install

### All Systems

```shell
# pyenv|rbenv|nodenv|goenv install x.x.x
# pyenv|rbenv|nodenv|goenv global x.x.x
```

```shell
pip install --requirement "${HOME}/.packages-python.txt"
< "${HOME}/.packages-node.txt" | xargs yarn global add
```

### macOS

```shell
brew bundle install --file="${HOME}/.packages-brew.txt"
nix-env --install --file "${HOME}/.packages-nix.nix"
```

### (Arch) Linux

```shell
< "${HOME}/.packages-pacman.txt" | sudo pacman -S -
< "${HOME}/.packages-aur.txt" | yay -S -
```
