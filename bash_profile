# export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_171.jdk/Contents/Home

# # Setting PATH for Python 3.7
# # The original version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
# export PATH
# 
# # Setting PATH for Python 3.7
# # The original version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
# export PATH
# # added by Miniconda3 4.5.12 installer
# # >>> conda init >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/shawkagawa/miniconda3/bin/conda' shell.bash hook 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     \eval "$__conda_setup"
# else
#     if [ -f "/Users/shawkagawa/miniconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/shawkagawa/miniconda3/etc/profile.d/conda.sh"
#         CONDA_CHANGEPS1=false conda activate base
#     else
#         \export PATH="/Users/shawkagawa/miniconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda init <<<
# # added by Anaconda3 2018.12 installer
# # >>> conda init >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/shawkagawa/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     \eval "$__conda_setup"
# else
#     if [ -f "/Users/shawkagawa/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/shawkagawa/anaconda3/etc/profile.d/conda.sh"
#         CONDA_CHANGEPS1=false conda activate base
#     else
#         \export PATH="/Users/shawkagawa/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda init <<<
# # added by Anaconda3 2018.12 installer
# # >>> conda init >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/shawkagawa/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     \eval "$__conda_setup"
# else
#     if [ -f "/Users/shawkagawa/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/shawkagawa/anaconda3/etc/profile.d/conda.sh"
#         CONDA_CHANGEPS1=false conda activate base
#     else
#         \export PATH="/Users/shawkagawa/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda init <<<
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/usr/local/opt/bison/bin:$PATH"
export PATH="/usr/local/opt/bison/bin:$PATH"
export PATH="/usr/local/opt/bison/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/Applications/Xcode.app/Contents/Developer/:$PATH"
# added by Anaconda3 2019.10 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/shawkagawa/opt/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     \eval "$__conda_setup"
# else
#     if [ -f "/Users/shawkagawa/opt/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/shawkagawa/opt/anaconda3/etc/profile.d/conda.sh"
#         CONDA_CHANGEPS1=false conda activate base
#     else
#         \export PATH="/Users/shawkagawa/opt/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda init <<<
# _byobu_sourced=1 . /usr/local/bin/byobu-launch 2>/dev/null || true

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

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

alias rm="rm -i"
alias mv="mv -i"
alias ll="ls -lah"

source ~/.bashrc
export PATH="/usr/local/sbin:$PATH"
