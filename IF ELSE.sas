/*
  instruction
  1) Arithmetic instruction
  2) Decision Control Instruction
  3) Loop Controle Instruction
 Decision Control instruction
 
 IF(Condition) THEN if body;
 
 If..... ELSE
 
 if(condition) THEN if body;
 ELSE elsebody;
 
 ELSE if 
 
 IF(Condition) THEN if body;
 ELSE IF(Condition) THEN if body;
 ELSE IF(cond)THEN if body;
 */

data mylib.number;
input n;
datalines;
30
12
13
-34
89
-90
;
run;

data mylib.positivenegative;
set mylib.number;
IF n>0 THEN result="Positive no";
ELSE result="Negative no";
run;


data mylib.grade;
set mylib.student;
IF per>=75 THEN grade="DISTINCTION";
IF per>=60 and per<75 THEN grade="FIrst class";
IF per>=50 and per<60 THEN grade="SEcond class";
IF per>=40 and per<50 THEN grade="Third class";
IF per<40 THEN grade="sorry failed";
run;




data mylib.examresult;
set mylib.student;
IF per>=75 THEN grade="DISTINCTION";
ELSE IF per>=60  THEN grade="FIrst class";
ELSE IF per>=50   THEN grade="SEcond class";
ELSE IF per>=40  THEN grade="Third class";
ELSE IF per<40 THEN grade="sorry failed";
run;




