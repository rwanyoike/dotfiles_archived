#!/usr/bin/env bash

set -o errexit
set -o nounset

repo_path="$( cd "${BASH_SOURCE[0]%/*}" && pwd )"

ui_bold=$(tput bold)
ui_dim=$(tput dim)
ui_green=$(tput setaf 2)
ui_reset=$(tput sgr0)

# -----------------------------------------------------------------------------

function dotfiles_log() {
  message="${1}"

  printf "${ui_bold}${ui_green}%s${ui_reset}\n" "${message}"
}

function dotfiles_exec() {
  cmd="${1}"

  printf "${ui_dim}$ %s${ui_reset}\n" "${cmd}"
  eval "${cmd}"
}

function dotfiles_github() {
  repo="${1}"
  dest="${2}"
  version="${3:-master}"

  if [[ ! -d "${dest}" ]]; then
    dotfiles_exec "git clone https://github.com/${repo} ${dest}"
  fi

  pushd "${dest}" >/dev/null 2>&1
  dotfiles_exec "git fetch -pPt"
  dotfiles_exec "git reset --hard origin/${version}"
  popd >/dev/null 2>&1
}

function dotfiles_ln() {
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

function dotfiles_setup() {
  files="${1}"

  find "${files}" -type f | while read -r "fname"; do
    rel_path="${fname//${files}\//.}"
    dotfiles_mkdir "${HOME}/$(dirname "${rel_path}")"
    dotfiles_ln "$fname" "${HOME}/${rel_path}"
  done
}

# -----------------------------------------------------------------------------

# spacemacs
dotfiles_log "--> spacemacs"
dotfiles_github "syl20bnr/spacemacs" "${HOME}/.emacs.d" "develop"

# vimrc
dotfiles_log "--> vimrc"
dotfiles_github "amix/vimrc" "${HOME}/.vim_runtime"

# tmux
dotfiles_log "--> tmux"
dotfiles_github "gpakosz/.tmux" "${HOME}/.tmux"
dotfiles_ln "${HOME}/.tmux/.tmux.conf" "${HOME}/.tmux.conf"

# zplug
dotfiles_log "--> zplug"
dotfiles_github "zplug/zplug" "${HOME}/.zplug"

# pyenv
dotfiles_log "--> pyenv"
dotfiles_github "yyuu/pyenv" "${HOME}/.pyenv"
dotfiles_github "yyuu/pyenv-virtualenv" "${HOME}/.pyenv/plugins/pyenv-virtualenv"

# rbenv
dotfiles_log "--> rbenv"
dotfiles_github "rbenv/rbenv" "${HOME}/.rbenv"
dotfiles_github "rbenv/ruby-build" "${HOME}/.rbenv/plugins/ruby-build"

# nodenv
dotfiles_log "--> nodenv"
dotfiles_github "nodenv/nodenv" "${HOME}/.nodenv"
dotfiles_github "nodenv/node-build" "${HOME}/.nodenv/plugins/node-build"

# goenv
dotfiles_log "--> goenv"
dotfiles_github "syndbg/goenv" "${HOME}/.goenv"

# system_All
dotfiles_log "--> system_All"
dotfiles_setup "${repo_path}/dotfiles/system_All"

# system_$(uname)
dotfiles_log "--> system_$(uname)"
dotfiles_setup "${repo_path}/dotfiles/system_$(uname)"
