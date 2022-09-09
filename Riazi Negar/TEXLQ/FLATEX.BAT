@echo off
set TEXINPUTS=%TEXFINPUTS%
if exist %Texlocal%\texerfed.mes del %Texlocal%\texerfed.mes
virtex &flplain %1 %2 %3 %4 %5 %6 %7 %8 %9
rem if this batch file is executed from within texshell program, then
rem EXFRTESH is True; otherwise it is undefined
if "%EXFRTESH%"=="True" goto exit
if exist %Texlocal%\texerfed.mes goto runeditor
goto exit
:runeditor
farsedt /f /e
:exit
