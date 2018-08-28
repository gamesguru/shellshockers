#!/bin/sh

for d in `find . -maxdepth 1 -type d`
do
    if [ $d != . ]
    then
        cd $d
        echo 'git pull'
        echo `pwd`
        echo `git pull`
        echo '\n'
        cd ./..
    fi
done
