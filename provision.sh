#!/usr/bin/env bash

set -o errexit
set -o nounset

repo_path="$(cd "${BASH_SOURCE[0]%/*}" && pwd)"

ui_sgr0=$(tput sgr0)
ui_002=$(tput setaf 2)
ui_003=$(tput setaf 3)
ui_bold=$(tput bold)

# -----------------------------------------------------------------------------

function dotfiles_print() {
  message="${1}"

  printf "${ui_bold}${ui_002}%s${ui_sgr0}\n" "${message}"
}

function dotfiles_exec() {
  cmd="${1}"

  printf "${ui_003}$ %s${ui_sgr0}\n" "${cmd}"
  eval "${cmd}"
}

function dotfiles_git() {
  repo="${1}"
  dest="${2}"
  version="${3:-master}"

  if [[ ! -d "${dest}" ]]; then
    dotfiles_exec "git clone ${repo} ${dest}"
  fi

  pushd "${dest}" >/dev/null 2>&1
  dotfiles_exec "git fetch -pPt"
  dotfiles_exec "git reset --hard origin/${version}"
  popd >/dev/null 2>&1
}

function dotfiles_link() {
  src="${1}"
  dest="${2}"

  if [[ ! -h "${dest}" ]]; then
    dotfiles_exec "ln -s ${src} ${dest}"
  fi
}

function dotfiles_mkdir() {
  path="${1}"

  if [[ ! -d "${path}" ]]; then
    dotfiles_exec "mkdir -p ${path}"
  fi
}

function dotfiles_init() {
  files="${1}"

  find "${files}" -type f | while read -r "fname"; do
    rel_path="${fname//${files}\//.}"
    dotfiles_mkdir "${HOME}/$(dirname "${rel_path}")"
    dotfiles_link "$fname" "${HOME}/${rel_path}"
  done
}

# -----------------------------------------------------------------------------

# spacemacs
dotfiles_print "--> spacemacs"
dotfiles_git "https://github.com/syl20bnr/spacemacs" "${HOME}/.emacs.d" "develop"

# vimrc
dotfiles_print "--> vimrc"
dotfiles_git "https://github.com/amix/vimrc" "${HOME}/.vim_runtime"

# tmux
dotfiles_print "--> tmux"
dotfiles_git "https://github.com/gpakosz/.tmux" "${HOME}/.tmux"
dotfiles_link "${HOME}/.tmux/.tmux.conf" "${HOME}/.tmux.conf"

# zplug
dotfiles_print "--> zplug"
dotfiles_git "https://github.com/zplug/zplug" "${HOME}/.zplug"

# pyenv
dotfiles_print "--> pyenv"
dotfiles_git "https://github.com/yyuu/pyenv" "${HOME}/.pyenv"
dotfiles_git "https://github.com/yyuu/pyenv-virtualenv" "${HOME}/.pyenv/plugins/pyenv-virtualenv"

# rbenv
dotfiles_print "--> rbenv"
dotfiles_git "https://github.com/rbenv/rbenv" "${HOME}/.rbenv"
dotfiles_git "https://github.com/rbenv/ruby-build" "${HOME}/.rbenv/plugins/ruby-build"

# nodenv
dotfiles_print "--> nodenv"
dotfiles_git "https://github.com/nodenv/nodenv" "${HOME}/.nodenv"
dotfiles_git "https://github.com/nodenv/node-build" "${HOME}/.nodenv/plugins/node-build"

# goenv
dotfiles_print "--> goenv"
dotfiles_git "https://github.com/syndbg/goenv" "${HOME}/.goenv"

# system_All
dotfiles_print "--> system_All"
dotfiles_init "${repo_path}/dotfiles/system_All"

# system_$(uname)
dotfiles_print "--> system_$(uname)"
dotfiles_init "${repo_path}/dotfiles/system_$(uname)"
