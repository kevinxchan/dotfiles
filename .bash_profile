###########################
# ENVIRONMENTAL VARIABLES #
###########################

# python 2.7
export PATH="/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

# postgreSQL
export PATH="/Library/PostgreSQL/10/bin/psql:$PATH"

# added by Anaconda2 5.2.0 installer
export PATH="/anaconda2/bin:$PATH"

# git autocomplete
test -f ~/.git-completion.bash && . $_

###################
# TERMINAL COLORS #
###################

# file/directory listing colors
export CLICOLOR=1

# Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# PS1 color
function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[10;95m\]"
  local MAGENTA="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"

  export PS1="$PURPLEBOLD\h:\W \u$CYAN\$(parse_git_branch) $MAGENTA$ $GREEN"
}

prompt
