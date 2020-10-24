%macro one(x);
%if &x=1 %then %return;
data abc;
temp='In the data step';
run;

%mend one;

%one(0);

%one(1);
