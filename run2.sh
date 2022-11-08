#!/bin/bash

mkdir -p dir-pics2

i=0
imax=18 # orig
imax=14
move=0

#while [ ${i} -lt ${imax} ] ; do
#    root -l -q -b drawMirror2.C+"($i,1,${move})"
#   i=$((i+1))
#done

for i in `seq 0 ${imax}`; do
    root -l -q -b drawMirror2.C+"($i,1,${move})"
done
