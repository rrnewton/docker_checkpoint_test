#!/bin/bash

echo "Running from: "`pwd -P`

echo 0 > counter.txt

memcounter=0

while true; do
    old=`cat counter.txt`;
    echo "Mem: ${memcounter}, Disk: ${old}";
    echo $(expr $old + 1) > counter.txt;
    memcounter=$(expr $memcounter + 1);
    sleep 1;
done
