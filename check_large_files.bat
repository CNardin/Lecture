@echo off
setlocal enabledelayedexpansion

set "outputFile=large_files.txt"
set "maxSize=104857600"  REM 100 MB in bytes

echo Files larger than 100 MB:

(for /r %%i in (*) do (
    set "size="
    for /f %%a in ('"dir /-c /a-d /s "%%i""') do set size=%%a
    if !size! gtr %maxSize% echo %%i
)) > %outputFile%

echo Done. The list of large files has been saved to %outputFile%.

endlocal
