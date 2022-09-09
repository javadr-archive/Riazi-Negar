%
% FILE: INITFED.DAT
% VERSION 1.06
%
% This file specifies some of the initialization parameters
% of the farsi editor.  The % character specifies a comment;
% any character after a % until the end of the line is ignored.
% On every line you have to specify only one parameter.  There
% should be at least one space between the parameter and its value.
% Empty lines are ignored.  Any error in this file is quietly
% ignored and no error message will be shown.  Also this file
% should be placed in a directory specified by the TEXLOCAL
% environment variable. If this variable is not defined, the
% current directory is searched for this file.  Of course, if
% neither of these conditions is satisfied, this file is not
% loaded and the program will use the default values.
% Always keep a back up copy of this file so you know how to change
% it whenever necessary.
%
BELL  ON                    % OPTIONS ON and OFF
CASE_SENSITIVITY   OFF      % OPTIONS ON and OFF
ACCENT_SENSITIVITY OFF      % OPTIONS ON and OFF
FONT_TYPE    FARSI_FONT     % OPTIONS FARSI_FONT and ENGLISH_FONT
LINE_TYPE    RIGHT_TO_LEFT  % OPTIONS RIGHT_TO_LEFT and LEFT_TO_RIGHT
KEYBOARD   MODIFIED         % OPTIONS MODIFIED and DEFAULT
MEMORY_FOR_SPAWN  60000     % Memory for spawning 0 to 100000
BACK_UP_PERIOD  5           % Period for auto back up in minutes
EIGHT_BIT  FALSE            % OPTIONS TRUE and FALSE
BACK_COLOR_MAIN BLUE        % OPTIONS BLACK and BLUE
%
% The following lines assign farsi letters, digits, punctuation marks
% and accents to different keys on the keyboard.  The codes for farsi
% letters, digits, punctuation marks, and accents are as follows:
%
% -LETTERS-
%   ALEF BEH PEH TEH SSEH GIM CHEH HHEH KHEH DAL ZAL REH ZEH JEH SIN
%   SHIN SAD ZAD TAH ZAH AIN GHAIN FEH QAF KAF GAF LAM MIM NUN VAV
%   HEH YEH HAMZEH LAMALEF KAFMARK YEHARABI ALEFBAK TAHMARBOTEH KESHIDEH
%
% -DIGITS-
%   0   1   2   3   4   5   6   7   8   9   0ARABI 4ARABI 5ARABI 6ARABI
%
% -PUNCTUATION MARKS-
%   S_QUOTE D_QUOTE  .   VIRGOL  VIRGOL_NOQTEH  :
%   ALAMAT_SOAL   !  ~   \  |  MOMAYEZ
%   ADAD_JODA   *  +  /  -  =  ]  [  }  {  )  (
%   GYOMEH_BAZ  GYOMEH_BASTEH  ENGLISI_BAZ  ENGLISI_BASTEH
%
% -ACCENTS-
%   TASHDID  HAMZEH_ERAB  TAN_NASB  FATHEH  ZAMEH  KASREH
%   SOKUN  TAN_RAFE  TAN_JAR  TASH_FATHEH  TASH_ZAMEH  TASH_KASREH
%   TASH_ALEF  TASH_TAN_NASB  TASH_TAN_RAFE  TASH_TAN_JAR
%   HAM_FATHEH  HAM_ZAMEH  HAM_KASREH  ALEF_KOTAH  KOLAH  VASLEH
%   NO_ERAB
%
%  (Note that HAMZEH is the code for hamzeh as a character and
%   HAMZEH_ERAB is the code for hamzeh as an accent mark.)
%
% Note that we have decided not to include the following punctuation
% marks
%      @ # $ % ^ & _ < >
% in the FARSI keyboard.  Also, since % character represents the
% beginning of a comment in this file, to assign this key to whatever
% character you want, use the keyword PERCENT.  For example the line
%   PERCENT PEH
% (without the % sign at the beginning) will assign the farsi letter
% PEH to the % key.
%
% Also note that, you can assign different accent marks to your keyboard
% too. Using this technique, you no longer need to use the Fi keys for
% accenting the characters.  For example
%   Q ZAMEH
% (without the % sign at the beginning) will assign the ZAMEH accent
% to the Q key.
%
% Next we just list the default assignments for
% the MODIFIED keyboard.
%
a SHIN
b KAF
c ZEH
d YEH
e SSEH
f BEH
g LAM
h ALEF
i HEH
j TEH
k NUN
l MIM
m VAV
n DAL
o KHEH
p HHEH
q ZAD
r QAF
s SIN
t FEH
u AIN
v REH
w SAD
x TAH
y GHAIN
z GAF
A SHIN
B KAFMARK
C JEH
D HAMZEH    % This is hamzeh as a character
E SSEH
F PEH
G LAMALEF
H ALEFBAK
I TAHMARBOTEH
J TEH
K NUN
L MIM
M VAV
N ZAL
O GIM
P CHEH
Q ZAD
R QAF
S SIN
T FEH
U AIN
V KESHIDEH
W SAD
X ZAH
Y GHAIN
Z YEHARABI
~ ~
` S_QUOTE
1 1
! !
2 2
@ GYOMEH_BASTEH
3 3
# GYOMEH_BAZ
4 4
$ 4ARABI
5 5
PERCENT 5ARABI  % Pay particular attention to this line
6 6
^ 6ARABI
7 7
& ADAD_JODA
8 8
* *
9 9
( (
0 0
) )
- -
_ 0ARABI
= =
+ +
[ [
] ]
{ {
} }
; VIRGOL_NOQTEH
: :
' MOMAYEZ
" D_QUOTE
, VIRGOL
< ENGLISI_BASTEH
. .
> ENGLISI_BAZ
/ /
? ALAMAT_SOAL
\ \
| |
