#!/bin/sh

for d in `find . -maxdepth 1 -type d`
do
    if [ $d != . ]
    then
        cd $d
        echo git diff
        echo `pwd`
        cd ./..
    fi

done
