
      PROGRAM LATEX
C     ************************************************************
C     * AT THIS PROGRAM WE WANT MAKE LATEX FILE FOR FORTRAN FILES*
C     *                                                          *
C     ************************************************************
      CHARACTER FILE2*8,FILE3*8,DATE1*4,DATE2*4
     #,BITE(80)*1,JBITE(90)*1,SLP*2,TS*2,BLN*1,SS*1,BSL*1
      PARAMETER(SLP='\>',TS='\\',BLN=' ',BSL='\')
      PRINT*,'*************************************'
      PRINT*,'ENTER NAME OF INPUT FILE :'
      READ*,FILE2
      PRINT*,'*************************************'
      PRINT*,'ENTER DATE(day) :'
      READ*,DATE1
      PRINT*,'*************************************'
      PRINT*,'ENTER DATE(month):'
      READ*,DATE2
C     PRINT*,'*************************************'
C     PRINT*,'ENTER NAME OF OUTPUT FILE WITH EXTENSION (.TEX) :'
C     READ*,FILE3
C     PRINT*,'*************************************'
      M=2
      OPEN(6,FILE=FILE2//'.TEX')
      OPEN(7,FILE=FILE2//'.FOR')
      WRITE(6,*)'\documentstyle[titlepage,fleqn]{article}'
      WRITE(6,*)'\setlength{\textwidth}{6.25in}'
      WRITE(6,*)'\setlength{\oddsidemargin}{0.5cm}'
      WRITE(6,*)'\setlength{\topmargin}{-1.0in}'
      WRITE(6,*)'\setlength{\textheight}{10.in}'
      WRITE(6,*)'\setlength{\parskip}{1ex}'
      WRITE(6,*)'\setlength{\parindent}{0pt}'
      WRITE(6,*)'\pagestyle{empty}'
      WRITE(6,*)'\begin{document}'
      WRITE(6,*)'\clearpage'
      WRITE(6,*)'\rule{6.25in}{.02in} '
      WRITE(6,*)'{\bf{',FILE2,'}}\hfill {\bf{75 / ',DATE2,'/',DATE1,'
     #}} \hfill ','{\bf{page 1 }}'
      WRITE(6,*)'\rule{6.25in}{.02in} '
      WRITE(6,*)'\mbox{ }\\'
      WRITE(6,*)'\begin{tabbing}'
      WRITE(6,*)'1234\=12345\=67\= \kill'
      J=1
      K=1
      DO 40 K=1,5000
       READ(7,60,END=50) (BITE(I),I=1,80)
       SUM=0
       S=0
       DO 30 I=1,80
        IF(BITE(I).EQ.'$'.OR.BITE(I).EQ.'%'.OR.BITE(I).EQ.'^'
     #   .OR.BITE(I).EQ.'&'.OR.BITE(I).EQ.'#'.OR.BITE(I).EQ.'_') THEN
         IF(I.EQ.6) THEN
          S=1
         ELSE
          JBITE(SUM+I)='\'
          SUM=SUM+1
         ENDIF
         DO 10 JJ=I,80
          JBITE(JJ+SUM)=BITE(JJ)
 10      CONTINUE
        ELSE
         JBITE(I+SUM)=BITE(I)
        END IF
        IMAX=80+SUM
        DO 20 JJ=IMAX+1,90
         JBITE(JJ)=BLN
 20     CONTINUE
 30    CONTINUE
       IF(S.EQ.1) THEN
        SS=BSL
       ELSE
        SS=BLN
       ENDIF
       WRITE(6,70)K,SLP,(JBITE(I),I=1,5),SLP,SS,JBITE(6),SLP,
     #            (JBITE(I),I=7,90),TS
       SS=BLN
       J=J+1
       IF(J.GE.51) THEN
        WRITE(6,*)'\end{tabbing} '
        WRITE(6,*)'\clearpage '
        WRITE(6,*)'\rule{6.25in}{.02in} '
        WRITE(6,*)'{\bf{',FILE2,'}}\hfill {\bf{75 / ',DATE2,'/',DATE1,'
     #  }}\hfill ','{\bf{page ',M,'}}'
        WRITE(6,*)'\rule{6.25in}{.02in} '
        WRITE(6,*)'\mbox{ }\\'
        WRITE(6,*)'\begin{tabbing}'
        WRITE(6,*)'1234\=12345\=67\= \kill'
        J=1
        M=M+1
       ENDIF
 40   CONTINUE
 50   WRITE(6,*)'\end{tabbing} '
      WRITE(6,*)'\end{document}'
 60   FORMAT(80A1)
 70   FORMAT(I4,A2,5A1,A2,2A1,A2,84A1,A2)
      STOP
      END
