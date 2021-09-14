#!/bin/sh

alias l='ls'
alias ll='ls -lh'
alias la='ls -a'
alias xclip='xclip -selection c'
alias xpaste='xclip -selection clipboard -o'
alias tsv="column -t -s$'\t'"
alias csv="column -t -s$','"
alias tsv2csv="sed -r 's/\t/,/g'"
alias open="mimeopen"
alias y2mp3="youtube-dl -x --audio-format mp3 --audio-quality 192K"
alias murder="pkill --signal SIGKILL"
alias urldecode='python -c "import sys, urllib as ul; \
    print ul.unquote_plus(sys.argv[1])"'
alias urlencode='python -c "import sys, urllib as ul; \
    print ul.quote_plus(sys.argv[1])"'
alias pyl='python -m oneliner'
alias chmox="chmod +x"

alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -v'
alias rmdir='rmdir -v'
alias ln='ln -v'
alias chmod="chmod -c"
alias chown="chown -c"
alias json="jq -C ."
alias r="ranger"
alias st="git status"
alias pu="git push"
alias pull="git pull"
alias cm="git commit"
alias co="git checkout"
alias ga="git add"
alias glances="timeout 3600 nice -n 19 glances"
alias httpsrv="python2 -m SimpleHTTPServer"

c() {
    cd $1;
    ls -lh;
}

alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias ls='ls --color=auto --human-readable --group-directories-first --classify'

blascores() {
  export OPENBLAS_NUM_THREADS=$1 OMP_NUM_THREADS=$1
  export MKL_NUM_THREADS=$1 OMP_NUM_cpus=$1
  export MKL_NUM_cpus=$1 OPENBLAS_NUM_cpus=$1
}

# https://stackoverflow.com/questions/26104116/qstat-and-long-job-names
alias qstatlong="qstat -u '*' -xml | tr '\n' ' ' | sed 's#<job_list[^>]*>#\n#g' | sed 's#<[^>]*>##g' | grep ' ' | column -t"
