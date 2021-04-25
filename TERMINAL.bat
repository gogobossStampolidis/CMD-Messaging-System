echo off
chcp 65001
cls
:LOGIN
title Logged In As ◄CONSOLE►
cls
:Send
echo Send A Message: 
set /P SendMessage=}_
if /I "%SendMessage%" EQU "$Help" goto :Help (
	) ELSE (
		if /I "%SendMessage%" EQU "$Broadcast" goto :Broadcast
			) ELSE (
		if /I "%SendMessage%" EQU "$Clear" goto :ClearText
			) ELSE (
		echo [95m◄CONSOLE►: %SendMessage%[0m >> Chat.txt
goto Send

:Help
echo Current Active Commands:
echo ========================
echo $Broadcast
echo   Broadcast something!
echo ========================
echo $Clear
echo   Clear the text!
echo ========================
echo That Is Everything!
goto :Send

:Broadcast
echo Enter text to broadcast!
set /P BroadcastMessage=}_
echo [93m◄BROADCAST SYSTEM►: [%UserName%] Says %BroadcastMessage%[0m >> Chat.txt
goto Send

:ClearText
cls
goto Send

hing!
goto :Send

:Leave
echo [91m◄SYSTEM►: [%UserName%] Has Left The Chat Room![0m >> Chat.txt
exit /B

:Broadcast
echo Enter text to broadcast!
set /P BroadcastMessage=}_
echo [93m◄BROADCAST SYSTEM►: [%UserName%] Says %BroadcastMessage%[0m >> Chat.txt
goto Send


:ChangeName
set UserName2=%UserName%
echo Your user name is [%UserName2%]
echo Chose a new one
echo =============================
set /P UserName=}_
title Logged In As [%UserName%]
echo [96m◄NAME SYSTEM►: [%UserName2%] Changed His Username To [%UserName%][0m >> Chat.txt
goto Send

:ClearText
cls
goto Send

