#!/bin/sh

for d in `find . -maxdepth 1 -type d`
do
    if [ $d != . ]
    then
        cd $d
        echo 'git --no-pager diff'
        echo `pwd`
        git --no-pager diff
        echo '\n'
        cd ./..
    fi
done
