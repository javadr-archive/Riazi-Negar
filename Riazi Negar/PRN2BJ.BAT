@echo off
if exist %TEXROOT%\FONTS\p6h_0.FLI goto passone
goto error
: passone
if exist %TEXROOT%\FONTS\p6h_h.FLI goto passtwo
goto error
:passtwo
if exist %TEXROOT%\FONTS\p6h_1.FLI goto passthree
goto error
:passthree
if exist %TEXROOT%\FONTS\p6h_2.FLI goto passfour
goto error
:passfour
if exist %TEXROOT%\FONTS\p6h_3.FLI goto passfive
goto error
:passfive
if exist %TEXROOT%\FONTS\p6h_4.FLI goto passsix
goto error
:passsix
if exist %TEXROOT%\FONTS\p6h_5.FLI goto passseven
goto error
:passseven
if exist %TEXROOT%\FONTS\p6h_r.FLI goto passeight
goto error
:passeight
if exist %TEXROOT%\FONTS\p6h_SLI.FLI goto passnine
goto error
:passnine
if exist %TEXROOT%\FONTS\p6h_7.FLI goto passten
goto error
:passten
if exist %TEXROOT%\FONTS\p6h_8.FLI goto passeleven
goto error
:passeleven
copy %TEXROOT%\prtbjh.bat  %TEXROOT%\texprint.bat
copy %TEXROOT%\vsp6h.bat   %TEXROOT%\texview.bat
copy %TEXROOT%\pcxp6h.bat  %TEXROOT%\dvipcx.bat
echo.
echo Printer Is Changed to Canon Buble Jet BJ-10e family.
echo.
goto end
:error
echo.
echo Error - I could not find the necessary 360 DPI font files for
echo Canon Bubble Jet BJ-10e printers. Printer type is not changed.
echo. 
:end
