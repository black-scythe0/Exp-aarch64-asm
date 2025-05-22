#!usr/bin/bash

exe='hello'

as -o ${exe}.o ${exe}.s &&

ld -o ${exe} ${exe}.o &&

cp ${exe} ~/exes/ &&

chmod +x ~/exes/${exe}&&

~/exes/${exe}&&

strace ~/exes/${exe}

