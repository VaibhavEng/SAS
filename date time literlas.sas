/* 
date and time literals.

date literals are always in date9 . informat

*/

data mylib.literals;
format d ddmmyy10.;
d=today();
run;


data mylib.literals;
format d mmddyy10.;
d='15OCT2020'd;
run;

proc contents data=mylib.literals;
run;



data mylib.litersla;
format t time.;
t = '17:06:20't;
run;
