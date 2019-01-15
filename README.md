# dotfiles

> Personal configurations. ಠ_ರೃ

There's no place like `${HOME}`.

## Requirements

- A Python environment

## Installation

Clone the repository:

```shell
git clone https://github.com/rwanyoike/dotfiles ${HOME}/.dotfiles
```

Break it down 💃:

```shell
pip install --upgrade ansible
ansible-playbook --inventory=${HOME}/.dotfiles/hosts ${HOME}/.dotfiles/playbook.yml
```

Set your default shell:

```shell
chsh --shell $(which zsh) # ┌(ಠ‿ಠ)┘
```

## Post Install

### Darwin

```shell
brew bundle install --file=${HOME}/.packages-brewfile.txt
nix-env --install --file ${HOME}/.packages-nixpkgs.nix
```

### Linux (Arch)

```shell
< ${HOME}/.packages-pacman.txt | xargs echo sudo pacman -S
```

### Agnostic

```shell
pyenv install x.x.x && pyenv global x.x.x
rbenv install x.x.x && rbenv global x.x.x
nodenv install x.x.x && nodenv global x.x.x
goenv install x.x.x && goenv global x.x.x
```

```shell
pip install --requirement ${HOME}/.packages-python.txt
< ${HOME}/.packages-nodejs.txt | xargs yarn global add
```
