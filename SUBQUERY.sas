/*sub-queries: Query inside a query.
  Outer-query(inner-query);
  
  First inner-query isexecuted and the result of 
  the inner query given to the outer query
*/

data mylib.salary;
input eid name$ dept$ sal;
datalines;
1 Harry IT 50000
2 Mac   admin 45000
3 Rox IT 55000
4 shree HR 45000
5 Pooja HR 50000
; 
run;  

/* write the query to find the employee taking highest sal*/

proc sql;
select * from mylib.salary where sal=55000;
quit;

proc sql;
select max(sal) from mylib.salary;
quit;  


proc sql;
select * from mylib.salary where sal=(select max(sal) from mylib.salary);
quit;



/* write a query to find the second largest salary in the salary table*/

proc sql;
select * from mylib.salary where sal=50000;
quit;


/* find the salaries other than highest salary*/

proc sql;
select max(sal) from mylib.salary where sal~=(select max(sal) from mylib.salary);
quit;


proc sql;
select * from mylib.salary where sal=(select max(sal) from mylib.salary where sal~=(select max(sal) from mylib.salary));
quit;