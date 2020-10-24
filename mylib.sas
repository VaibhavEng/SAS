

data mylib.student;
input id name$ per;
datalines;
1  vaibhav 98.5
2  mac     99.5
3  rox     78.54
4  shree   93.33
;
run;

* hiiii;

proc print data=mylib.student;
run;