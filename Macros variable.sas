/*
Macro ariable:
thereare two types of Macros Variables:
1)Automatic Macros Variable.
2)User defined Macros Variable


Automatic Macros Variables are predefined Variables defined by sas  
macro processor

e.g SYSDAY give system day
    SYSDATE9 system date in date9. format
    SYSVLOING  currebt sas version on your system
    
Accessing macros variable:

syntax:
&macro_variables;

*/


data temp;
d="&sysday";
date="&sysdate9.";
version="&sysvlong";
run;

data temp;
input name$ sales;
datalines;
Harry 20000
Rohit 12000
MAc 24000
;
run;

proc print data=temp;
title "ITVEDANT SALES REPORT &sysday,&sysdate";
run;    