#!/bin/sh
#place this in a folder with all your git repos, it recurses one level deep for `git diff`

for d in `find . -maxdepth 1 -type d`
do
    if [ $d != . ]
    then
        cd $d
        echo 'git --no-pager diff'
        pwd
        git --no-pager diff
        echo '\n'
        cd ./..
    fi
done
