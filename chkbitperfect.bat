call tool/md5 kcbuilt.32x md5
if "%md5%" equ "ed059ef80f0292989c0cc86a0224f09d" (
      echo MD5 identical!
) else (
      echo MD5 does not match.
)
pause