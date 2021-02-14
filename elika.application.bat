@echo off
goto initelika

:initelika
cls
echo Launching...
goto menuelika

:menuelika
cls
echo Elika TM Shutdown Utilities
echo.
cmdMenuSel f870 "Shutdown the system." "Restart the system." "Shutdown the system and go to boot options." "Hibernate the system." "Shutdown and prepare fast startup." "Cancel and exit."
if %ERRORLEVEL% == 1 shutdown /p 
if %ERRORLEVEL% == 2 shutdown /r /t 0
if %ERRORLEVEL% == 3 shutdown /o /r /t 0
if %ERRORLEVEL% == 4 shutdown /h
if %ERRORLEVEL% == 5 shutdown /hybrid /s /t 0
if %ERRORLEVEL% == 6 goto cancel

:cancel
exit