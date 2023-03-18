@echo off
setlocal enabledelayedexpansion


for /D %%i in (*) do (
	set "filename=%%~i"

    for %%A in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
       set "filename=!filename:%%A=%%A!"
    )

    echo|set /p="%%i :"

    echo|set /p="" > !filename!.ini

    for /F "tokens=*" %%r in ('dir /O:N /b /A-D %%i') do (
    	echo ^(%%r=%%r^)! >> !filename!.ini
    )

    echo ************************************************* >> !filename!.ini
    echo OK

)	
endlocal
