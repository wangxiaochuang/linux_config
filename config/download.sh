#!/bin/bash

config_dir=`pwd`
list_file=".tmux.conf .vimrc .vim .Xmodmap .bashrc"
cd ~

for file in $list_file
do
    if [ "$file" == "download.sh" ]
    then
        continue
    fi
    rm -rf ~/$file 2>/dev/null
    ln -s $config_dir/$file ./ 2>/dev/null
done

