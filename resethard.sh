#!/bin/sh
#place this in a folder with all your git repos, it recurses one level deep for `git reset --hard`

for d in `find . -maxdepth 1 -type d`
do
    if [ $d != . ]
    then
        cd $d
        echo 'git reset --hard'
        pwd
        git reset --hard
        echo '\n'
        cd ./..
    fi
done
