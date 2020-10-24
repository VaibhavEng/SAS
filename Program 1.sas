


/* creating dataset

   data libraryname.datasetname;

*/
data student;
input id name$ per;
datalines;
1  vaibhav 98.5
2  mac     99.5
3  rox     78.54
4  shree   93.33
;
run;

/*
  proc procedure_name data = librarayname.datasetname;
  run;
*/

proc print data=student;
run;