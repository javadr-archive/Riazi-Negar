SET TEXROOT=C:\TEXXET
SET PATH=%PATH%;C:\TEXXET

SET TEXLOCAL=%TEXROOT%
SET TEXCODE=plain
SET TEXMEM=%TEXLOCAL%\SCRATCH.MEM
SET TEXFORMATS=%TEXROOT%\FORMATS\PLAIN.FMT
SET TEXFINPUTS=%TEXROOT%\INPUTS
SET TEXEINPUTS=%TEXROOT%\EINPUTS
SET TEXINPUTS=%TEXFINPUTS%
SET TEXFONTS=%TEXROOT%\TFM
SET TEXTFM=%TEXFONTS%
rem SET TMP=%TEXLOCAL%\
SET DVIDRVINPUT=%TEXLOCAL%\TEXFILES
SET DVIDRVFONTS=%TEXROOT%\FONTS
SET DVIDRVGRAPH=%TEXLOCAL%\TEXFILES;%TEXLOCAL%\TEXGRAPH

texshell -a %1
