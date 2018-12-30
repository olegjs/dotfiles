alias ls='ls --color --group-directories-first'
alias ll='ls -l --human-readable --classify'
alias la='ll --almost-all'

alias vi='vim'

if [ -n "$(type -P xclip)" ]
then
  alias xclip='xclip -selection clipboard'
  alias clipboard='if [ -p /dev/stdin ]; then xclip -in; fi; xclip -out'
elif [ -n "$(type -P pbcopy)" ] && [ -n "$(type -P pbpaste)" ]
then
  alias clipboard='if [ -p /dev/stdin ]; then pbcopy; fi; pbpaste'
fi
