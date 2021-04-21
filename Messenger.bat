echo off
cls

echo This is for viewing messages. Open Send.bat to send a message
echo ==============================================================
pause
echo Welcome To The Chat!
:Chat
timeout 1 /NOBREAK>nul
cls
type Chat.txt
goto Chat
