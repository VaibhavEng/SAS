%LET name="ITVEDANT";

%MACRO global1;
data insidemacro;
x=&name;
run;
%MEND global1;

%global1;



data outsidemacro;
y=&name;
run;


/*
inside  declare variable
*/

%MACRO lobal1;
%LET name="ITVEDANT";
data insidemacro1;
x=&name;
run;
%MEND lobal1;

%lobal1;



data outsidemacro1;
y=&name;
run;