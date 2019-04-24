#!/usr/bin/env bash

set -o errexit
set -o nounset

repo_path="$(cd "${BASH_SOURCE[0]%/*}" && pwd)"

ui_reset=$(tput sgr0)
ui_002=$(tput setaf 2)
ui_003=$(tput setaf 3)
ui_bold=$(tput bold)

# -----------------------------------------------------------------------------

function dotfiles_log() {
  message="${1}"

  printf "${ui_bold}${ui_002}%s${ui_reset}\n" "${message}"
}

function dotfiles_exec() {
  cmd="${1}"

  printf "${ui_003}$ %s${ui_reset}\n" "${cmd}"
  eval "${cmd}"
}

function dotfiles_gh() {
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

function dotfiles_link() {
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
dotfiles_gh "syl20bnr/spacemacs" "${HOME}/.emacs.d" "develop"

# vimrc
dotfiles_log "--> vimrc"
dotfiles_gh "amix/vimrc" "${HOME}/.vim_runtime"

# tmux
dotfiles_log "--> tmux"
dotfiles_gh "gpakosz/.tmux" "${HOME}/.tmux"
dotfiles_ln "${HOME}/.tmux/.tmux.conf" "${HOME}/.tmux.conf"

# zplug
dotfiles_log "--> zplug"
dotfiles_gh "zplug/zplug" "${HOME}/.zplug"

# pyenv
dotfiles_log "--> pyenv"
dotfiles_gh "yyuu/pyenv" "${HOME}/.pyenv"
dotfiles_gh "yyuu/pyenv-virtualenv" "${HOME}/.pyenv/plugins/pyenv-virtualenv"

# rbenv
dotfiles_log "--> rbenv"
dotfiles_gh "rbenv/rbenv" "${HOME}/.rbenv"
dotfiles_gh "rbenv/ruby-build" "${HOME}/.rbenv/plugins/ruby-build"

# nodenv
dotfiles_log "--> nodenv"
dotfiles_gh "nodenv/nodenv" "${HOME}/.nodenv"
dotfiles_gh "nodenv/node-build" "${HOME}/.nodenv/plugins/node-build"

# goenv
dotfiles_log "--> goenv"
dotfiles_gh "syndbg/goenv" "${HOME}/.goenv"

# system_All
dotfiles_log "--> system_All"
dotfiles_link "${repo_path}/dotfiles/system_All"

# system_$(uname)
dotfiles_log "--> system_$(uname)"
dotfiles_link "${repo_path}/dotfiles/system_$(uname)"
