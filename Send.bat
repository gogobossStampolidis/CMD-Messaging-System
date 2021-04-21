echo off
cls

echo What is your user name?
set /P UserName=}_
title Logged In As [%UserName%]
echo [SYSTEM]: [%UserName%] Has Joined The Chat Room! >> Chat.txt
cls
echo Type $Help for commands!
echo Logged In As [%UserName%]
:Send


echo Send A Message: 
set /P SendMessage=}_
if /I "%SendMessage%" EQU "$Help" goto :Help (
	) ELSE (
		if /I "%SendMessage%" EQU "$Leave" goto :Leave
			) ELSE (
		if /I "%SendMessage%" EQU "$Broadcast" goto :Broadcast
			) ELSE (
		if /I "%SendMessage%" EQU "$ChangeName" goto :ChangeName
			) ELSE (
		if /I "%SendMessage%" EQU "$Clear" goto :ClearText
			) ELSE (
		echo [%UserName%]: %SendMessage% >> Chat.txt
goto Send

:Help
echo Current Active Commands:
echo ========================
echo $Leave
echo   Leave The Chat Room D=
echo ========================
echo $Broadcasts
echo   Broadcast something!
echo ========================
echo $ChangeName
echo   Rename yourself!
echo ========================
echo $Clear
echo   Clear the text!
echo ========================
echo That Is Everything!
goto :Send

:Leave
echo [SYSTEM]: [%UserName%] Has Left The Chat Room! >> Chat.txt
exit /B

:Broadcast
echo Enter text to broadcast!
set /P BroadcastMessage=}_
echo [BROADCAST SYSTEM]: [%UserName%] Says %BroadcastMessage% >> Chat.txt
goto Send


:ChangeName
set UserName2=%UserName%
echo Your user name is [%UserName2%]
echo Chose a new one
echo =============================
set /P UserName=}_
title Logged In As [%UserName%]
echo [SYSTEM]: [%UserName2%] Changed His Username To [%UserName%] >> Chat.txt
goto Send

:ClearText
cls
goto Send
