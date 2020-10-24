/*importing Raw (.txt) files*/

data mylib.sales;
infile '/folders/myfolders/sasuser.v94/vaibhav/sales.txt';
input month qtr name$ type$ units price;
run;