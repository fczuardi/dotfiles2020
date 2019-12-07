#
# ~/.bashrc
#


# Basic
# =====

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# prompt
PS1='[\u@\h \W]\$ '


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

