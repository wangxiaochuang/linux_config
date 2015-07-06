#!/bin/bash

config_dir=`pwd`
list_file=`ls -a $config_dir`
cd ~

for file in $list_file
do
    if [ "$file" == "download.sh" ]
    then
        continue
    fi
    rm -rf ~/$file 2>null
    ln -s $config_dir/$file ./ 2>null
done

