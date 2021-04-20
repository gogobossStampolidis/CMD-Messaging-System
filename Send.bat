echo off
cls

echo What is your user name?
set /P UserName=}_
echo [SYSTEM]: [%UserName%] Has Joined The Chat Room!
cls
:Send
echo Type $Help for commands!
echo Logged In As [%UserName%]
echo Send A Message: 
set /P SendMessage=}_
if /I "%SendMessage%" EQU "$Help" goto :Help (
	) ELSE (
		if /I "%SendMessage%" EQU "$Leave" goto :Leave
			) ELSE (
				echo [%UserName%]: %SendMessage% >> Chat.txt
goto Send

:Help
echo Current Active Commands:
echo ========================
echo $Leave
echo   Leave The Chat Room D=
echo ========================
echo That Is Everything!
goto :Send

:Leave
echo [SYSTEM]: [%UserName%] Has Left The Chat Room! >> Chat.txt