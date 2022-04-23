#compile etc
alias ifort='ifort -cpp -mkl -o a'
alias iforto='ifort -cpp -mkl -O3 -o a'
#alias ifortd='ifort -cpp -mkl -check all,noarg_temp_created -traceback -fpe0 -g -CB -O2 -fp-stack-check'
alias ifortd='ifort -cpp -mkl -traceback -CB -o a'
alias g++='g++ -std=c++11 -O3 -mtune=native -march=native -mfpmath=both -Wfatal-errors -o a'
alias icc='-O3 -no-prec-div -fp-model fast=2 -xHost -o a'
alias py='python'

#Linux command
alias mv='mv -i'
#alias rm='rm -i'
alias mkdir='mkdir -p'
alias rmdir='rmdir -p'
alias ls='ls --color=auto'
alias l='ls -ltr'
alias wget='wget -c'
alias la='ls -a'
alias lla='ls -la'
alias ..='cd ..'
alias ...='cd ../..'
alias cds='cd /mnt/share/save/taisei'
alias df='df -h'
alias du='du -h'
alias cp='ionice -c 3 nice -n 10 cp'
#alias sh='ionice -c 3 nice -n 10 sh'
alias tar='ionice -c 3 nice -n 10 tar'
alias c='clear'
alias p='pwd'
alias kill='kill -9'
alias diff='diff -u'
alias enc='openssl enc -e -aes-256-cbc -salt -k'
alias dec='openssl enc -d -aes-256-cbc -salt -k'

# vi以外認めん
alias emacs='vim'
alias gedit='vim'
alias vi='vim'

#予防
alias dd='echo "no dd command available"'
alias chmod='chmod --preserve-root'
alias chown='chown --preserve-root'
alias acn='cd ~/bin && ./aaa tcp 22'

#git
#alias git='git --no-pager'
alias gl='git pull'
alias gc='git commit'
alias gp='git push'
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gco='git checkout'
alias gcm='git checkout master'

alias qstat="qstat -n| grep -A 1 taisei"
#alias ff='grep -rnwI ./ -e '
alias dis='display'
alias clip='xsel --clipboard --input'
alias duc='duc ui -d /home/guest/.duc.db'
alias packmol='~/program/packmol/src/packmol'
alias gp='gnuplot'
# Misc :)
alias ping1='ping www.google.com'
# test
alias less="less -R"
