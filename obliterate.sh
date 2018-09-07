#!/bin/bash

DIR_TARGETS=("bin" "obj")
for t in $DIR_TARGETS; do
    find ./ -name $t -type d | xargs rm -rf
done


#Ex: ("*.cs" "*.gitignore" "GitVersion.yml")
FILE_TARGETS=()
for t in $FILE_TARGETS; do
    find ./ -name bin -type f | xargs rm -f
done
