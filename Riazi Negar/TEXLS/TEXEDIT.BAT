@echo off
rem Invoked when TeX is terminated with the `E' option
rem the two parameters are file name and line number.
rem Due to some unknown reason, virtex does not release the memory
rem completely when it executes this batch file. For this reason,
rem the file name and line number are written to a file named 
rem texerfed.mes and after virtex is terminated completely, the
rem editor program is executed
if exist %Texlocal%\texerfed.mes del %Texlocal%\texerfed.mes
echo.
echo. 
echo                                 PLEASE WAIT
echo %1  %2 > %Texlocal%\texerfed.mes

