echo off
cls
echo.
echo.
echo This is for viewing messages. Open Send.bat to send a message
echo ==============================================================
echo.
echo.
echo.
echo   000000      000000     00000       000000
echo  00          00          00   0     00
echo  00          00          00   00    00
echo  00   __     00   __     00000000    000000
echo  00     0    00     0    00   00          00
echo  00     0    00     0    00   0           00
echo   000000      000000     00000       000000
echo.
echo              STUDIOS
echo.
echo.
echo     THIS PROGRAM IS CALLED : 
echo.
echo      CMSFL WHICH STANDS FOR 
echo.
echo   CMD-MESSAGING-SYSTEM-for-LAN
echo.
echo.
PAUSE
:Chat
timeout 1 /NOBREAK>nul
cls
type Chat.txt
goto Chat
