







/*
Define Macro.

%macro macroname(argument list);

  instructions inside Macros;
%mend macroname;


calling Macros.

%macroname;

%macroname(argument_list);


*/













%macro first;
data temp;
x="First Macro";
run;
%mend first;


%first





%macro addition(x,y);
data temp1;
a=&x;
b=&y;
c=&x+&y;
%mend addition;

%addition(10,15);