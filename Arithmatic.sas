/*
arithmetic opertaions.



*/

data mylib.arith;
input x y;
a=x+y;
b=x-y;
c=x*y;
d=x/y;
e=mod(x,y);
datalines;
20 30
9  2
34 57
;
run;

proc print data=mylib.arith;
run;