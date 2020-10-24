/*
converting string datatype to numeric and date

 function:input()
 
 syntax:
 input(variable/column,format);
 
 */

data mylib.inputfunction;
format dt ddmmyy10.;
d='15/10/2020';
dt=input(d,ddmmyy10.);
run;

proc contents data=mylib.inputfunction;
run;

data mylib.inputfunction;
x='156';
y=input(x,3.);
run;

proc contents data=mylib.inputfunction;


