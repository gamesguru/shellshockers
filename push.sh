#!/bin/sh
#place this in a folder with all your git repos, it recurses one level deep for `git push`

for d in `find . -maxdepth 1 -type d`
do
    if [ $d != . ]
    then
        cd $d
        echo 'git push'
        pwd
        git push
        echo '\n'
        cd ./..
    fi
done
