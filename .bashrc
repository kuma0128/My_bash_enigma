if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi
if [ -f "${HOME}/.bash_functions" ]; then
  source "${HOME}/.bash_functions"
fi

eval `dircolors ~/.colorrc`

# Don't wait for job termination notification
set -o notify
# Don't use ^D to exit
set -o ignoreeof
# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
shopt -s cdspell
#scl enable devtoolset-7 bash
source /opt/intel/oneapi/setvars.sh > /dev/null
conda deactivate
export PATH=$PATH:/opt/intel/bin/
export PATH=$PATH:~/bin

export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well
export HISTSIZE=1000000 
HISTTIMEFORMAT='%Y-%m-%dT%T%z '
#export LESS=-q
export LESS="-iRMXS"

#export PS1='\[\033[01;32m\]\u@\H\[\033[01;34m\] \w \$\[\033[00m\] '
export PS1='\e[35m\t \[\033[01;32m\]\u@\H\[\033[01;34m\] \w \$\[\033[00m\] \n'

GNUTERM=wxt
export GNUTERM

#ulimit -s 131072
umask 027

export EDITOR=vim
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/taisei/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/taisei/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/taisei/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/taisei/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
conda deactivate

#export PATH=/home/taisei/miniconda3/bin:$PATH

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
