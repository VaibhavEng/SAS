/*
format for time .
syntax:
format variable_name time:
*/

data temp;
format t time.;
t= time();
run;

proc contents data=temp;
run;

