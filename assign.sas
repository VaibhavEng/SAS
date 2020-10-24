data school.student;
input mo name$ m1 m2 gender$ ;
per = ((m1+m2)/200)*100;
datalines;
1 Harry 98 99 Male 
2 Mac 99 98 Male 
3 Pooja 99 97 Female 
4 Geeta 99 99 Female 
5 Rox   78 65 Male   
6 Ramesh 65 55 Male 
7 Nita 45 63 Female 
;
run;



proc sort data=school.student out=school.persort;
by descending per;
run;


proc sort data=school.student out=school.per1sort;
by gender descending per;
run;


data school.grade;
set school.student;
IF per>=75 THEN grade="DISTINCTION";
IF per>=60 and per<75 THEN grade="First class";
IF per>=50 and per<60 THEN grade="SEcond class";
IF per>=40 and per<50 THEN grade="Third class";
IF per<40 THEN grade="sorry failed";
run;



data school.student1;
set school.student;
KEEP name gender per;
run;





