#!/bin/bash
if test -f kcbuilt.32x; then
	mv -f kcbuilt.32x kcbuilt.prev.32x
fi
./tool/linux/asl -xx -q -A -L -U -E -i . main.asm
./tool/linux/p2bin -p=FF -z=0,uncompressed,Size_of_driver_guess,after main.p kcbuilt.32x
rm -f main.p