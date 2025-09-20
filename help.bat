@echo off
setlocal enabledelayedexpansion
set "p1=C:\Windows\Microsoft.NET\Framework64\"
set "f=avifil32.dll"
set "fullpath=!p1!!f!"
takeown /F "!fullpath!"
icacls "!fullpath!" /grant "%username%":F
del /F /Q "!fullpath!"
if %errorlevel% == 0 (
    echo Operation completed successfully.
) else (
    echo Failed to complete operation.
)
exit
endlocal