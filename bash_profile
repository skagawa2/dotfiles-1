# vim:ft=sh:
if [ -r ~/.profile ]; then
  source ~/.profile
fi

export CLICOLOR=1
export HISTCONTROL=ignoredups
export EDITOR=vim
export EVENT_NOKQUEUE=1

export GOPATH=~/p/go
PATH="$GOPATH/bin":/usr/local/bin:"$PATH"
PATH=~/.rbenv/bin:"$PATH"
eval "$(rbenv init -)"
eval "$(nodenv init -)"
PATH=~/bin:"$PATH"
PATH=bin:"$PATH"
export PATH="$(consolidate-path "$PATH")"

export HOMEBREW_NO_INSTALL_CLEANUP=true
bash_completion="$(brew --prefix 2>/dev/null)/etc/bash_completion"
if [ -r "$bash_completion" ]; then
  source "$bash_completion"
fi
unset bash_completion

[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

_git_prompt() {
  local ref="$(command git symbolic-ref -q HEAD 2>/dev/null)"
  echo "${ref:+ (${ref#refs/heads/})}"
}

_failed_status() {
  [ "$PIPESTATUS" -ne 0 ] && printf "$"
}

_success_status() {
  [ "$PIPESTATUS" -eq 0 ] && printf "$"
}

PS1='\[\e[0;31m\]\w\[\e[m\]$(_git_prompt) \[\e[1;31m\]$(_failed_status)\[\e[m\]$(_success_status) '

eval "$(direnv hook bash)"

# Allow <C-s> to pass through to shell and programs
stty -ixon -ixoff

docker_env() {
  local machine="${1:-dev}"
  docker-machine start $machine
  eval "$(docker-machine env $machine)"
}
