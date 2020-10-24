

data salesnew;
input id name$ sales 3. date ddmmyy10.;
format date ddmmyy10.;
datalines;
1 harry 150 15/05/2020
2 mac 36 01/04/2020
3 Ramesh 29 23/05/2020
4 Pooja 350 22/02/2020
5 sheetal 125 16/02/2020
;
run;







data salesmew1;
input id name$ sales 3. date mm