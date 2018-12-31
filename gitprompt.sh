# Find git-prompt.sh
# ln -s git-prompt.sh /etc/bash_completion.d/git-prompt

if [ "$(type -t __git_ps1)" == 'function' ]
then
  function __set_git_prompt() {
    local c_red='\[\e[31m\]'
    local c_green='\[\e[32m\]'
    local c_blue='\[\e[1;34m\]'
    local c_clear='\[\e[0m\]'

    __git_ps1 "$c_green\u@\h$c_clear:$c_blue\w$c_clear" "\$ "
    [ $VTE_VERSION ] && __vte_prompt_command
  }

  GIT_PS1_SHOWCOLORHINTS='yes'
  GIT_PS1_SHOWDIRTYSTAT='yes'
  GIT_PS1_SHOWSTASHSTATE='yes'
  GIT_PS1_SHOWUNTRACKEDFILES='yes'
  GIT_PS1_SHOWUPSTREAM='auto'

  PROMPT_COMMAND='__set_git_prompt'
fi
