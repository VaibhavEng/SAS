proc contents data=mylib.car;
run;


proc means data=mylib.car;
run;

proc means data=mylib.car maxdec=2;
run;


proc means data=mylib.car;
var mpg weight;
run;


proc means data=mylib.car N mean;
var mpg weight;
run;

proc means data=mylib.car N Nmiss;
run;