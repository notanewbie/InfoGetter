@echo off

set /p dept="Please enter your department: "

for /f "delims=" %%i in ('hostname') do set hostname=%%i
echo %hostname%

echo %username%

for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "6.3" echo Windows 8.1
if "%version%" == "6.2" echo Windows 8.
if "%version%" == "6.1" echo Windows 7.
if "%version%" == "6.0" echo Windows Vista.
if "%version%" == "10.0" echo Windows 10.
echo %version%
rem etc etc

for /f "delims=" %%i in ('wmic bios get serialnumber /value') do for /f "delims=" %%j in ("%%i") do set "%%j"

echo %serialnumber%

SET string=%dept%,%hostname%,%username%,%version%,%serialnumber%
echo %string%>>computers.csv
pause