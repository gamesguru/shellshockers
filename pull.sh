#!/bin/sh
#place this in a folder with all your git repos, it recurses one level deep for `git pull`

for d in `find . -maxdepth 1 -type d`
do
    if [ $d != . ]
    then
        cd $d
        echo 'git pull'
        pwd
        git pull
        echo '\n'
        cd ./..
    fi
done
