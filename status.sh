#!/bin/sh
#place this in a folder with all your git repos, it recurses one level deep for `git status`

for d in `find . -maxdepth 1 -type d`
do
    if [ $d != . ]
    then
        cd $d
        echo 'git --no-pager status'
        pwd
        git --no-pager status
        echo '\n'
        cd ./..
    fi
done
