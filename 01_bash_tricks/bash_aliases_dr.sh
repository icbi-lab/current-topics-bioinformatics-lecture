#!/bin/bash

alias hgrep='history | grep'

alias addch="sed  '1 s/^/#/'"
alias remch="sed  '1 s/^#//'"
alias rmh="tail -n +2"

cph() {
    local s=$1
    local t=$2
    
    head -1 $s | cat - $t
}

alias sumup="awk '{s+=\$1}END{print s}'"

alias csv2tsv="sed -r 's/\,/\t/g'"
alias tsv2csv="sed -r 's/\t/\,/g'"


countfq() {
    local fq="$1"
    echo $(zcat -f $fq | wc -l)/4 | bc
}

mkcd() {
    local d="$1"
    mkdir -p $d
    cd $d
}


numh() {
    local f=$1
    local d=$2

    if [ "$d" != "" ]; then
        FS=$2
    else
        FS="\t"
    fi

    head -1 $1 | sed -r 's/'${FS}'/\n/g' | cat -n -
}

