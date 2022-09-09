       PROGRAM LATEX
***********************************************************
* AT THIS PROGRAM WE WANT MAKE LATEX FILE FOR FORTRAN FILES
*
***********************************************************
	 CHARACTER FILE2*85,FILE3*85,DATE1*4,DATE2*4
     #,BITE(80)*1,JBITE(90)*1,AN*1,BS*2,BLN*4
	   PARAMETER(AN='&',BS='\\')
	 PRINT*,'*************************************'
	 PRINT*,'ENTER NAME OF INPUT FILE :'
	 READ*,FILE2
	 PRINT*,'*************************************'
	 PRINT*,'ENTER DATE(day) :'
	 READ*,DATE1
	 PRINT*,'*************************************'
	 PRINT*,'ENTER DATE(month):'
	 READ*,DATE2
	 PRINT*,'*************************************'
	 PRINT*,'ENTER NAME OF OUTPUT FILE WITH EXTENSION (.TEX) :'
	 READ*,FILE3
	 PRINT*,'*************************************'
	 M=2
	 OPEN(6,FILE=FILE3)
	 OPEN(7,FILE=FILE2)
	 WRITE(6,*)'\documentstyle[titlepage,fleqn]{article}'
	 WRITE(6,*)'\setlength{\textwidth}{6.25in}'
	 WRITE(6,*)'\setlength{\oddsidemargin}{0.5cm}'
	 WRITE(6,*)'\setlength{\topmargin}{-0.4in}'
	 WRITE(6,*)'\setlength{\textheight}{10in}'
	 WRITE(6,*)'\setlength{\parskip}{1ex}'
	 WRITE(6,*)'\setlength{\parindent}{0pt}'
	 WRITE(6,*)'\pagestyle{empty}'
	 WRITE(6,*)'\begin{document}'
	 WRITE(6,*)'\renewcommand'
	 WRITE(6,*)'\baselinestretch{1.5}'
	 WRITE(6,*)'\scriptsize '
	 WRITE(6,*)'\clearpage'
	 WRITE(6,*)'\rule{6.25in}{.02in} '
	 WRITE(6,*)'{\bf{',FILE2,'}}\hfill {\bf{75 / ',DATE2,'/',DATE1,'
     #}} \hfill ','{\bf{page 1 }}'
       WRITE(6,*)'\rule{6.25in}{.02in} '
       WRITE(6,*)'\mbox{ }\\'
	 WRITE(6,*)'\begin{tabular}{l|l|l} '
	 J=1
	 K=1
	 DO 10 K=1,5000
	 READ(7,70,END=20) (BITE(I),I=1,80)
70     FORMAT(80A1)
	 SUM=0
	 DO 21 I=1,80
	IF (BITE(I).EQ.' ') THEN
	BITE(I)='~'
	ENDIF
	 IF (BITE(I).EQ.'$'.OR.BITE(I).EQ.'%'.OR.BITE(I).EQ.'^'
     #.OR.BITE(I).EQ.'&'.OR.BITE(I).EQ.'#'.OR.BITE(I).EQ.'_') THEN
	JBITE(SUM+I)='\'
	SUM=SUM+1
	DO 25 JJ=I,90
25      JBITE(JJ+SUM)=BITE(JJ)
       ELSE
	JBITE(I+SUM)=BITE(I)
       END IF
21     CONTINUE
	IF (JBITE(1).EQ.'C') THEN
	WRITE(6,11)AN,K,AN,(JBITE(I),I=1,3),(JBITE(I), I=4,79),BS
11     FORMAT(A1,I5,A2,79A1,A2)
	ELSE
	WRITE(6,12)AN,K,AN,'~~~~',(JBITE(I),I=1,3),(JBITE(I), I=4,79),BS
12     FORMAT(A1,I5,A2,A4,79A1,A2)
       ENDIF
30     CONTINUE
	 J=J+1
	 IF (J.EQ.56) THEN
	 WRITE(6,*)'\end{tabular} '
	 WRITE(6,*)'\clearpage '
	 WRITE(6,*)'\rule{6.25in}{.02in} '
	 WRITE(6,*)'{\bf{',FILE2,'}}\hfill {\bf{75 / ',DATE2,'/',DATE1,'
     #}}\hfill ','{\bf{page ',M,'}}'
	 WRITE(6,*)'\rule{6.25in}{.02in} '
	 WRITE(6,*)'\mbox{ }\\'
	 WRITE(6,*)'\begin{tabular}{l|l|l} '
	 J=1
	 M=M+1
	 ENDIF
10     CONTINUE
20    WRITE(6,*)'\end{tabular} '
      WRITE(6,*)'\end{document}'
	STOP
       END
