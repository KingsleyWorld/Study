#!/bin/bash

root_dir=$PWD

function update_github() {
    cur=$PWD
    cd $1
    echo ‘cd $PWD’
    echo ‘git pull’
    git pull
    cd $cur
    echo ‘cd $PWD’
}

function update_gitlocal() {
    cur=$PWD
    cd $1
    echo ‘cd $PWD’
    echo ‘git pull’
    git pull

    if [[ -f .gitmodules ]]; then
        update_git_submodules ‘’
    fi

    cd $cur
    echo ‘cd $PWD‘
}

function update_git_submodules() {
    echo ‘git submodule update --remote --merge’
    git submodule update --remote --merge
}

function getdir(){
    echo ‘search dir: $1’
    for element in `ls $1`;
    do
        dir_or_file=$1/$element
        #echo ‘find: $dir_or_file’
        if [ -d $dir_or_file ]; then
            if [[ $dir_or_file == *.github ]]; then
                 echo ‘find .github: $dir_or_file‘
                 update_github $dir_or_file
                 sleep 0.1
                 continue
            elif [[ $dir_or_file == *.gl ]]; then
                 echo ‘find .gl: $dir_or_file‘
                 update_gitlocal $dir_or_file
                 sleep 0.1
                 continue
            fi
            getdir $dir_or_file
        fi
    done
}

getdir $root_dir

