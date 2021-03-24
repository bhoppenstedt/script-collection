echo checking internet connection
:while
Ping www.google.de -n 1 -w 1000
cls
if errorlevel 1 (set internet=Not connected to internet) else (set internet=Connected to internet)
echo %internet% - %time:~0,8% >> log.txt
TIMEOUT /T 5 /NOBREAK
goto :while