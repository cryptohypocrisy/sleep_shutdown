@echo off
echo.
echo The PsShutdown Program
echo.
echo.
SET /P choice=Sleep, Shutdown or Abort (sl/sh/a)? 
IF %choice% NEQ a (
	SET minutes=...
	SET /P minutes=In how many minutes? 
	SET /A seconds="60*minutes"
)

echo.

IF %choice%==sl (
	psshutdown -d -t %seconds%
	echo.
)
IF %choice%==sh (
	psshutdown -k -t %seconds%
	echo.
)
if %choice%==a (
	psshutdown -a
	echo.
)

pause
