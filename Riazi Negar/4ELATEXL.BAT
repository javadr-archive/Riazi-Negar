@echo off
set TEXINPUTS=%TEXEINPUTS%
if exist %Texlocal%\texerfed.mes del %Texlocal%\texerfed.mes
virtex &lplain %1 %2 %3 %4 %5 %6 %7 %8 %9
dvidrv dvihplj @lj.cnf /po=prn %1 %2 %3 %4 %5 %6 %7 %8 %9
