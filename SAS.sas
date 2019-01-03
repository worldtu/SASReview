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

/* 2. */
/* 1-1/2+1/3-1/4+…-1/100 */

data;
	total = 0;
	do i= 1 to 100;
		total+1/((-1)**(i+1)*i);
		put total= i=;
	end;
run;

/* 3 */
/* Output all the perfect numbers in range 1~10000 */

data;
	do n = 1 to 10000;
		total = 0;
		do i = 1 to n-1;
			if mod(n,i)=0 then do;
				total+i;
			end;
		end;
		if n=total then put n=;
	end;
run;

*---output---*
|    n=6     |
|    n=28    |
|    n=496   |
|    n=8128  |
*------------*;

/* 4. */
/* Get the greatest common devisor with Euclidean algorithm */

data;
	m = 124288;
	n = 248448;
	i = mod(m, n);
	a = n;
	do while (i ^= 0);
		b = i;
		i = mod(a, i);
		a = b;
	end;
	put a=;
run;

*---output---*
|   a =128   |
*------------*;

/* 5. */
/* To test the percentage of "Male" in a dataset named "class", 
   with 80% confidence interval.                               */
   
proc freq data=sas.class;
	tables sex / binomial alpha=0.2;
run;
