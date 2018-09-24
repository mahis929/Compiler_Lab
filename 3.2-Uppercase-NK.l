%{
	#include<stdio.h>
	#include<ctype.h>
	int i;
%}

TYPE int|char|bool|float|void|for|do|while|if|else|return|void

%%

{TYPE} {
	printf("%s", yytext);
}

. {
	for(i = 0; i < yyleng; i++)
	{
		printf("%c", toupper(yytext[i]));
	}
}

%%

int main()
{
	yylex();
	return 0;
}