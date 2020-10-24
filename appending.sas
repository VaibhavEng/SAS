/*
 Combining one or more dataset or appending dataset.
 
 syntax:
 
 data.libname.finaldatasetname;
 set libname.dataset1 ibname.dataset2 ... libname.dataset;
 run;
 
 while combining two or more dataset , structure of all th dataset
 must be same i.e same number of column

*/
data mylib.emp1;
input id name$ gender$ salary;
datalines;
10 harry1 male 300
21 pooja1 female 2500
31 deepti1 female 350
41 mac1     male  450
51 shree1   male   50
61  meena1  female 850
71  priya1  female  60
;
run;


data mylib.appendempemp1;
set mylib.emp(rename=(id=empid)) mylib.emp1(rename=(id=empid));
run;


/* column with the diff data type having same name cannot be appended*/
/* if the column had differnt name but same datatype*/