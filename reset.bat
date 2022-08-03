@echo off
del "computers.csv"
SET string="Department,Device Name,User,OS,Service Tag,PC Date"
echo %string%>>computers.csv
pause
