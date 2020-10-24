/*
Writing to multiple dataset

*/

data mylib.employee;
input eid name$ gender$ sal;
datalines;
1 Harry Male 30000
2 Mac   Male 35000
3 Rohit Male 40000
4 Pooja Female 60000
5 Nisha Female 80000
6 Shree Male 60000
7 Divya Female 55000
;
run;

/*dividing obervation*/
data mylib.maleemp mylib.femaleemp;
set mylib.employee;
if gender="Male" Then output mylib.maleemp;
if gender="Female" then output mylib.femaleemp;
run;


/*Dividing Columns*/
data A(Keep=name gender) B(Keep=eid sal);
set mylib.employee;
run;