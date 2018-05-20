@echo off
echo.
echo The PsShutdown Program
echo.
echo.
SET /P choice=Sleep, Shutdown or Abort (1/2/3)? 
IF %choice% NEQ 3 (
	SET minutes=...
	SET /P minutes=In how many minutes? 
	SET /A seconds="60*minutes"
)

echo.

IF %choice%==1 (
	psshutdown -d -t %seconds%
	echo.
)
IF %choice%==2 (
	psshutdown -k -t %seconds%
	echo.
)
if %choice%==3 (
	psshutdown -a
	echo.
)

pause
