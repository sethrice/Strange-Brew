  ###############################
  # Linux/Unix secondary logging
  ###############################
  HISTIGNORE=""
  HISTCONTROL=""
  HISTFILE=/var/adm/history/.$(whoami):$(logname).$(uname -n).hist
  HISTFILESIZE=10000
  HISTSIZE=5000
  HISTTIMEFORMAT="# [%y-%m-%d %T] "

  export HISTFILE HISTSIZE HISTFILESIZE HISTTIMEFORMAT HISTIGNORE HISTCONTROL
  readonly HISTFILE HISTSIZE HISTFILESIZE HISTTIMEFORMAT HISTIGNORE HISTCONTROL