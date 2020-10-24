/*DML Operations*/

proc sql;
insert into mylib.car1(Make,mpg,rep78)values('Suzuki',20,3) values('abc',3,2);
quit;

proc sql;
delete from mylib.car1 where make="Suzuk";
quit;

proc sql;
update mylib.car1 SET mpg=20 where Make="AMC";
quit;






proc contents data=mylib.car1;
run;