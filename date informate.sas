/*
format and informats in SAS

informats tell the SAS how to read the data from the Source(datalines/import).

informat are written in the input step.

format tells the sas how to display a data.


1) informt for string:
   input variable_name$ w.;
   w is weight   .=period 
   weight is equal to the number of character to be read while taking data 
   from any source.
2)   
   
*/

/*Default length is 8*/

data mylib.itvedant;
input name$;
datalines;
ITVEDANT
ITVEDANT_THANE
ITVEDANT_ANDHERI
;
run;


proc contents data=mylib.itvedant;
run;


data mylib.itvedant;
input name$ 14.;
datalines;
ITVEDANT
ITVEDANT_THANE
ITVEDANT_ANDHERI
;
run;


proc contents data=mylib.itvedant;
run;



/*FORMAT*/

data mylib.itvedant;
input name$ 16.;
format name$ 10.;
datalines;
ITVEDANT
ITVEDANT_THANE
ITVEDANT_ANDHERI
;
run;

proc contents data=mylib.itvedant;
run;






