%{
	#include<stdio.h>
	int s = 0, c = 0, m = 0;
%}

%%

"//".* {
	s++;
}

[/][*][^*]*[*]+([^*/][^*]*[*]+)*[/] {m++;}

%%

int main()
{
	yyin = fopen("text.c", "r");
	yyout = fopen("out.c", "w");
	yylex();
	printf("Single line = %d Multi line = %d", s, m);
	return 0;
}