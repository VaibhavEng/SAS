data mylib.emp2;
input eid name$ city$;
datalines;
1 Harry Pune
2 Mac Nashik
3 Rox mumbai
4 Shree Thane
5 Ramesh Nagpur
;
run;



data mylib.dept;
input eid deptname$ loc$;
datalines;
1 D1 Thane
2 D2 Pune
4 D4 Nashik
5 D5 Nagpur
6 D6 Mumbai
;
run;


/*
Join = cartesian product + condition;
*/


/*
CROSS JOIN 
syntax:
select columnlist form table JOIN NAME table2;

*/

proc sql;
select * from mylib.emp2 cross join mylib.dept;
quit;



proc sql;
select * from mylib.emp2 inner join mylib.dept on(emp2.eid=dept.eid);
quit;

proc sql;
select * from mylib.emp2 inner join mylib.dept on(emp2.eid=dept.eid and emp2.city=dept.loc);
quit;


/*Left join*/

proc sql;
select * from mylib.emp2 left join mylib.dept on(emp2.eid=dept.eid);
quit;


proc sql;
select * from mylib.emp2 Right join  mylib.dept on(emp2.eid=dept.eid);
quit;
