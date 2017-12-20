# Prompt

export PS1="\W> "

# Aliases

alias gls='gls --group-directories-first --color'
alias ls='gls'
alias ll='ls -l --human-readable --classify --no-group'
alias la='ll --almost-all'

alias cd..='cd ..'
alias gti='git'
alias hist='history'

# Path

## MacPorts
export PATH="/opt/local/bin:/opt/local/sbin/:$PATH"

## NPM
export PATH="./node_modules/.bin/:$PATH"

# History

HISTCONTROL=erasedups
HISTIGNORE="ls:ll:la:cd:hist:history"
shopt -s histappend


# bash-completion
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
    . /opt/local/etc/profile.d/bash_completion.sh
fi
