/*

Database=library
table=dataset

e.g: database=library=mylib
      table=dataset=car
  1)DQL  : select
  2)DML  : insert, update and delete
  
  
SQL procedure:

syntax:
proc sql;

sql query;

quit;

*/


/*
selecting all columns
*/


proc sql;

select * from mylib.car
quit;
  
  
proc sql;
select make,mpg,rep78 from mylib.car;
quit; 

/*Renaming column or aliasing a column*/

proc sql;

select make as companyname,mpg as milage from mylib.car;
quit;


/*Airthmetic Operations(+,-,/,*)*/
proc sql;
select mpg,rep78,(mpg+rep78) as total from mylib.car;
quit;


/* Filtering with where clause*/
proc sql;
select * from mylib.car where make<>"Audi";
quit;

 
proc sql;
select * from mylib.car where mpg>=15;
quit;



proc sql;
select * from mylib.car where mpg<=15;
quit;


/*logical and or */

proc sql;

select * from mylib.car where make="Buick"  and mpg>=20;
quit;


proc sql;
select * from mylib.car where mpg=15 or mpg=20 or mpg=25;
quit;


proc sql;
select * from mylib.car where mpg in(15,20,25);
quit;


proc sql;
select * from mylib.car where mpg not in(15,20,25);
quit;



/* sorting */

proc sql;
select * from mylib.car order by weight;
quit;


proc sql;
select * from mylib.car order by weight desc;
quit;



/*create table using select*/

proc sql;
create table mylib.car1 as select make,mpg,rep78 from mylib.car; 
quit;



