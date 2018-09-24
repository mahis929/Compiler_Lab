%{
	#include<stdio.h>
	#include<ctype.h>
	FILE *b;
	int i;
%}

%%

"//".* {
	for(i = 0; i < yyleng; i++)
	{
		fprintf(b, "%c", toupper(yytext[i]));
	}
}

[/][*][^*]*[*]+([^*/][^*]*[*]+)*[/] {
	for(i = 0; i < yyleng; i++)
	{
		fprintf(b, "%c", toupper(yytext[i]));
	}
}

[\n] {
	fprintf(b, "\n");
}


. {
	for(i = 0; i < yyleng; i++)
	{
		fprintf(b, "%c", yytext[i]);
	}
}

%%

int main()
{
	yyin = fopen("test.txt", "r");
	b = fopen("out.c", "w+");
	yylex();
	return 0;
}