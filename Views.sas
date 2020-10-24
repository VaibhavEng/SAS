/* view in SAs sql*/

/*

create view viewname as select columnlist form libname.datasetname;

*/


proc sql;

create view mylib.actview as select eid,name,sal from mylib.employee;
quit;


proc sql;

insert into mylib.actview(eid,name,sal)values(8,'Pooja',58000);
quit;