#!/bin/bash
#
# ~/.bashrc
#


# Basic
# =====

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# prompt
# include git branch on the prompt
# https://gist.github.com/justintv/168835
export PS1="\\w:\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\$ "
# color branch name in Cyan (36)
CYAN_START="\[\e[36m\]"
COLOR_END="\[\e[0m\]"
export PS1="\\w:$CYAN_START\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)$COLOR_END\$ "


# Setups
# ======

# ssh-agent
# auto start ssh-agent just one time
# see https://wiki.archlinux.org/index.php/SSH_keys#SSH_agents
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    eval "$(<~/.ssh-agent-thing)"
fi

# nvm
export NVM_DIR="$HOME/.nvm"
export NVM_SOURCE="/usr/share/nvm" # The AUR package installs it to here.
[ -s "$NVM_SOURCE/nvm.sh" ] && . "$NVM_SOURCE/nvm.sh"  # Load NVM

# pyenv
eval "$(pyenv init -)"

# git bash completion
# from https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
if [ -f ~/github/git/git-completion.bash ]; then
  source ~/github/git/git-completion.bash
fi

# Android
export ANDROID_SDK_ROOT=~/Android/Sdk
export JAVA_HOME=/usr/lib/jvm/default
export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools"

# Aliases
# =======
if [ -e ~/.bashrc.aliases ] ; then
   source ~/.bashrc.aliases
fi

