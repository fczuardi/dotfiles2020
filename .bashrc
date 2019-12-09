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
# export PS1="\\w:\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\$ "
# color branch name in Cyan (36)
export PS1="\\w:\e[36m\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\e[0m\$ "


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


# Aliases
# =======
if [ -e ~/.bashrc.aliases ] ; then
   source ~/.bashrc.aliases
fi

