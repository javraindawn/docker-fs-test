#! /bin/bash

seq -w 1 $COUNT | xargs -n1 -I% sh -c 'dd if=/dev/urandom of=test.% bs=$(shuf -i1-10 -n1) count=1024' > /dev/null 2>&1

find . -type f -name 'test*' -exec du -ch {} + | grep total$

rm -rf test.*
