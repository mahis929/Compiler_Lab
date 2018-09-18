%{
#include<stdio.h>
FILE *odd, *even;
%}

%%

[0-9]+ {
	int number = 0;
	for(int i = 0; i < yyleng; i++)
	{
		number = number*10 + (yytext[i]-'0');
	}
	if(number%2 == 0)
	{
		fprintf(even, "%d ", number);
	}
	else
	{
		fprintf(odd, "%d ", number);	
	}
}

%%

int main()
{
	yyin = fopen("input.txt", "r");
	odd = fopen("odd.txt", "w+");
	even = fopen("even.txt", "w+");
	yylex();
	return 0;
}