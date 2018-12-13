# Find git-prompt.sh
# ln -s git-prompt.sh /etc/bash_completion.d/git-prompt

c_red='\[\e[31m\]'
c_green='\[\e[32m\]'
c_blue='\[\e[1;34m\]'
c_clear='\[\e[0m\]'

if [ -f /etc/bash_completion.d/git-prompt ]
then
  GIT_PS1_SHOWCOLORHINTS='yes'
  GIT_PS1_SHOWDIRTYSTAT='yes'
  GIT_PS1_SHOWSTASHSTATE='yes'
  GIT_PS1_SHOWUNTRACKEDFILES='yes'
  GIT_PS1_SHOWUPSTREAM='auto'
  PROMPT_COMMAND="__git_ps1 \"$c_green\u@\h$c_clear:$c_blue\w$c_clear\" \"\\\$ \""
fi

unset c_red c_green c_blue c_clear
