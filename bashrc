alias rm="rm -i"
alias mv="mv -i"
alias ll="ls -lah"

export TERM=screen-256color
force_color_prompt=yes

source ~/.git-prompt.sh
export PS1='\[\e[38;5;1m\]\u\e[m@\[\e[38;5;202m\]\h \[\e[38;5;4m\][\w]\[\e[38;5;202m\]$(__git_ps1 " (%s)")\e[m\n\$ '

source /usr/local/archive/miniconda/profile
conda activate denovo_asm
