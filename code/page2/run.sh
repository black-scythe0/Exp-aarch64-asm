#!usr/bin/bash

exe='add'

as -o ${exe}.o ${exe}.s &&

ld -o ${exe} ${exe}.o &&

cp ${exe} ~/exes/ &&
chmod  +x ~/exes/${exe} &&

strace ~/exes/${exe}

