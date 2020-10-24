/*
there are two type of loops:
1) DO LOOP
2) WHILE LOOP

DO LOOP

syntax:
DO variable_name = start_value to end_value;
body;
END;

*/

data mylib.doloop;
x=0;
DO i=1 to 2;
x=x+i;
END;
RUN;

/*
DO while loop

intialization;
DO WHILE condition;
body;
increment/decrement;
END;
*/

data mylib.dowhile;
x=0;
i=1;
DO WHILE (i<=6);
x = x+i;
i = i+1;
END;
run;