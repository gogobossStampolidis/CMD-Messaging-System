echo off
chcp 65001
cls
:USERNAMECHOSE
echo What is your user name?
set /P UserName=}_
		if /I "UserName" EQU "◄SYSTEM►" goto :ILLEGAL_NAME (
			) ELSE (
		if /I "%UserName%" EQU "◄BROADCAST SYSTEM►" goto :ILLEGAL_NAME
			) ELSE (
		if /I "%UserName%" EQU "SYSTEM" goto :ILLEGAL_NAME
			) ELSE (
		if /I "%UserName%" EQU "BROADCAST SYSTEM" goto :ILLEGAL_NAME
			) ELSE (
		if /I "%UserName%" EQU "CONSOLE" goto :ILLEGAL_NAME
			) ELSE (
		if /I "%UserName%" EQU "◄CONSOLE►" goto :ILLEGAL_NAME
			) ELSE (
		if /I "%UserName%" EQU "◄BROADCAST_SYSTEM►" goto :ILLEGAL_NAME
			) ELSE (
		if /I "%UserName%" EQU "BROADCAST_SYSTEM" goto :ILLEGAL_NAME
			) ELSE (

		goto :LOGIN
:ILLEGAL_NAME
echo The name that you chose is illegal. Please pick another name
goto :USERNAMECHOSE
:LOGIN
title Logged In As [%UserName%]
echo [92m◄SYSTEM►: [%UserName%] Has Joined The Chat![0m >> Chat.txt
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
echo $Broadcast
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

