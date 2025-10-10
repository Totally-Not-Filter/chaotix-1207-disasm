@echo off
IF EXIST kcbuilt.32x move /Y kcbuilt.32x kcbuilt.prev.32x >NUL
tool\windows\asw -xx -q -A -L -U -E -i . main.asm
tool\windows\p2bin -p=FF -z=0,uncompressed,Size_of_driver_guess,after main.p kcbuilt.32x
del main.p