#!usr/bin/bash

as -o exit.o exit.s &&

ld -o exit exit.o &&

mv exit ~/exes &&

chmod +x ~/exes/exit &&

echo "OUTPUT:--"
~/exes/exit

echo "STRACE:--"
strace ~/exes/exit

