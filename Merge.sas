data mylib.empdept;
input eid name$ dept$;
datalines;
1 vaibhav IT
2 Mac      HR
3 Rox      Tech
;
run;

data mylib.empsal;
input eid salaray;
datalines;
1 12500
2 25000
3 45000
4 60000
5 36000
;
run;

data mylib.merge;
merge mylib.empdept mylib.empsal;
run;