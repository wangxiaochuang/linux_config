#!/bin/bash

config_file="
.tmux.conf .vim .vimrc .Xmodmap
"

for file in $config_file
do
    cp -rf ~/$file config
done

git add config synchronism.sh
git commit -m "auto"
git push -u origin master
