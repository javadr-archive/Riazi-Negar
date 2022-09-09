@echo off
set TEXINPUTS=%TEXEINPUTS%
if exist %Texlocal%\texerfed.mes del %Texlocal%\texerfed.mes
virtex &lplain %1 %2 %3 %4 %5 %6 %7 %8 %9
dvidrv dvidot lqm @p6m_p6h.cnf /po=prn /h=12 %1 %2 %3 %4 %5 %6 %7 %8 %9
