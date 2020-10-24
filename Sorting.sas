/* 
sorting


syntax:
proc sort data=Libname.datasetname  out=libname.datasetname
by variable name;
run;


by default is stored in ascending order
*/

proc sort data=mylib.grade out=persort;
by per;
run;

proc sort data=mylib.grade out=mylib.persort1;
by descending per;
run;

/*

string column sorting

*/

proc sort data=mylib.grade out=mylib.stringsort;
by name;
run;


data mylib.emp;
input id name$ gender$ salary;
datalines;
1 harry male 30000
2 pooja female 25000
3 deepti female 35000
4 mac     male  45000
5 shree   male   50000
6  meena  female 85000
7 priya   femalee 60000
;
run;



proc sort data=mylib.emp out=mylib.twovarsort;
by gender descending salary;
run;



