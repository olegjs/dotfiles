alias ls='ls --color --group-directories-first --indicator-style=slash'
alias ll='ls -l --human-readable --classify'
alias la='ll --almost-all'

alias vi='vim'

function mk_clip_alias {
  echo "if [ -p /dev/stdin ]; then $1; fi; $2"
}

if [ -n "$(type -P xclip)" ]; then
  alias xclip='xclip -selection clipboard'
  alias clipboard="$(mk_clip_alias 'xclip -in' 'xclip -out')"
elif [ -n "$(type -P pbcopy)" ] && [ -n "$(type -P pbpaste)" ]; then
  alias clipboard="$(mk_clip_alias pbcopy pbpaste)"
fi

unset mk_clip_alias
