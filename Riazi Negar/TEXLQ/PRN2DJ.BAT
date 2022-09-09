@echo off
if exist %TEXROOT%\FONTS\LJ_0.FLI goto passone
goto error
: passone
if exist %TEXROOT%\FONTS\LJ_h.FLI goto passtwo
goto error
:passtwo
if exist %TEXROOT%\FONTS\LJ_1.FLI goto passthree
goto error
:passthree
if exist %TEXROOT%\FONTS\LJ_2.FLI goto passfour
goto error
:passfour
if exist %TEXROOT%\FONTS\LJ_3.FLI goto passfive
goto error
:passfive
if exist %TEXROOT%\FONTS\LJ_4.FLI goto passsix
goto error
:passsix
if exist %TEXROOT%\FONTS\LJ_5a.FLI goto passseven
goto error
:passseven
if exist %TEXROOT%\FONTS\LJ_5b.FLI goto passeight
goto error
:passeight
if exist %TEXROOT%\FONTS\LJ_SLI.FLI goto passnine
goto error
:passnine
if exist %TEXROOT%\FONTS\LJ_7.FLI goto passten
goto error
:passten
if exist %TEXROOT%\FONTS\LJ_8.FLI goto passeleven
goto error
:passeleven
copy %TEXROOT%\prtdj.bat  %TEXROOT%\texprint.bat
copy %TEXROOT%\vslj.bat   %TEXROOT%\texview.bat
copy %TEXROOT%\pcxlj.bat  %TEXROOT%\dvipcx.bat
echo.
echo Printer Is Changed to HP Desk-Jet family
echo.
goto end
:error
echo.
echo Error - I could not find the necessary 300 DPI font files for
echo HP-Desk Jet printers. Printer type is not changed.
echo. 
:end
