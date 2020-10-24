/*Summary report we use proc report procedure*/

/*
D-Developer , AD-Assistant Developer
ntask: Number of Task Assigned.
ctask: Number of Task Completed.
*/

data mylib.firm;
input name$  post$  region$ ntask ctask gender$;
datalines;
Harry  D  WEST 10    6  Male
Mac    AD EAST  5    2  Male
Rohit  D  EAST  12   7  Male
Shree  D  EAST  15   11  Male
Ramesh AD WEST  10   7   Male
POOJA  AD EAST  14   10  Female
KIRAN  AD WEST  15   8   Male
Minal  D  EAST  12   5   Female
Tejal  AD WEST  10   4   Female
Kartiken AD WEST 7   4   Male
Mayuri   AD  WEST 14 8 Female
Mahesh  D    EAST 10 8 Male
Shrikant AD  EAST 12 6 Male
;
run;


proc print data=mylib.firm;
run;


proc report data=mylib.firm;
run;

/*sepcific col*/
proc report data=mylib.firm;
column name post ntask;
run;

/*string column*/
proc report data=mylib.firm;
column name post region gender;
run;

/* only for numeric */
proc report data=mylib.firm;
column ntask ctask;
run;

/* deifine - group and across */

proc report data=mylib.firm;
column region name post ntask ctask gender;
define region/group;
run;


proc report data=mylib.firm;
column gender name post ntask ctask region;
define gender/group;
run;


proc report data=mylib.firm;
column post name  ntask ctask region;
define post/group;
run;



proc report data=mylib.firm;
column region post gender ntask ctask name;
define region/Group;
define post/group;
define gender/group;
run;





/* Across option */

/*

                         post
               AD                  D 
   region
   East
   West


*/

proc report data=mylib.firm;
column region post;
define region/Group;
define post/across;
run;



proc report data=mylib.firm;
column region post, (ntask ctask);
define region/group;
define post/across;

run;
