# vim:ft=sh:
if [ -r ~/.profile ]; then
  source ~/.profile
fi

export CLICOLOR=1
export HISTCONTROL=ignoredups
export EDITOR=vim
export EVENT_NOKQUEUE=1

# export GOPATH=~/p/go
# PATH="$GOPATH/bin":/usr/local/bin:"$PATH"
# PATH=~/.rbenv/bin:"$PATH"
# eval "$(rbenv init -)"
# eval "$(nodenv init -)"
# PATH=~/bin:"$PATH"
# PATH=bin:"$PATH"
# export PATH="$(consolidate-path "$PATH")"

_git_prompt() {
  local ref="$(command git symbolic-ref -q HEAD 2>/dev/null)"
  echo "${ref:+ (${ref#refs/heads/})}"
}

_failed_status() {
  [ "$PIPESTATUS" -ne 0 ] && echo "\$"
}

_success_status() {
  [ "$PIPESTATUS" -eq 0 ] && echo "\$"
}

CLEAR='\[\e[m\]'
USERCOL='\[\e[38;5;1m\]'
HOSTCOL='\[\e[38;5;202m\]'
DIRCOL='\[\e[38;5;4m\]'
GITCOL='\[\e[38;5;202m\]'
FAILCOL='\[\e[31m\]'

# PS1="$USERCOL\u$CLEAR@$HOSTCOL\h $CLEAR[$DIRCOL\w$CLEAR] $CLEAR$(_git_prompt)\n $FAILCOL\$(_failed_status)$CLEAR\$(_success_status) "
PS1="$USERCOL\u $DIRCOL\w$CLEAR\$(_git_prompt) $FAILCOL\$(_failed_status)$CLEAR\$(_success_status) "
# PS1="$DIRCOL\w$CLEAR$(_git_prompt) $FAILCOL\$(_failed_status)$CLEAR\$(_success_status) "

# eval "$(direnv hook bash)"

# Allow <C-s> to pass through to shell and programs
# stty -ixon -ixoff

# docker_env() {
#   local machine="${1:-dev}"
#   docker-machine start $machine
#   eval "$(docker-machine env $machine)"
# }

alias rm="rm -i"
alias mv="mv -i"
alias ll="ls -lah"

source ~/.bashrc
