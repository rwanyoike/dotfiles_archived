# dotfiles

> Personal configurations. ಠ_ರೃ

There's no place like `${HOME}`.

## Requirements

None

## Installation

Clone the repository:

```shell
git clone https://github.com/rwanyoike/dotfiles ${HOME}/.dotfiles
```

Break it down:

```shell
bash "${HOME}/.dotfiles/provision.sh"
```

Set your default shell:

```shell
chsh --shell $(which zsh) # ┌(ಠ‿ಠ)┘
```

## Post Install

```shell
pyenv install x.x.x && pyenv global x.x.x
rbenv install x.x.x && rbenv global x.x.x
nodenv install x.x.x && nodenv global x.x.x
goenv install x.x.x && goenv global x.x.x
```

```shell
pip install --requirement ${HOME}/.packages-python.txt
< ${HOME}/.packages-node.txt | xargs yarn global add
```

### Darwin

```shell
brew bundle install --file=${HOME}/.packages-brew.txt
nix-env --install --file ${HOME}/.packages-nix.nix
```

### (Arch) Linux

```shell
< ${HOME}/.packages-pacman.txt | sudo pacman -S -
< ${HOME}/.packages-aur.txt | yay -S -
```
