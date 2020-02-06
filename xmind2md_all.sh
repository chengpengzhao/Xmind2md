#!/bin/bash

find . -regex ".*+.xmind" -print|while read i
do
    echo $i
    python3 xmind2md.py -source "$i"
done


