#!/bin/bash

for i in $(echo *.xmind)
do
   python3 xmind2md.py -source $i
done


