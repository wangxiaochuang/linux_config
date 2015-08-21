#!/bin/bash

rm resource/*~
git add config resource upload.sh
git commit -m "auto"
git push -u origin master
