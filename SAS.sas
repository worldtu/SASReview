/* 1. */

/* To select n rows for each group in variable A , dataset DT */

data test;
	set DT;
	by A;
  n = 10; * This is your wanted n;
	if first.A then a=0;
	a+1;
	if a<=n;
run;
