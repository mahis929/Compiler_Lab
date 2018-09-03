%{
#include<stdio.h>
int count = 0;
%}

letter [a-zA-Z]
digit [0-9]
id {letter}*|({letter}{digit}*)+
notid ({digit}+{letter}*)+
TYPE int|char|bool|float|void|for|do|while|if|else|return|void|case|default|printf|scanf|main|return

%%
[\t\n]*{TYPE} {
	printf("%s is a keyword\n", yytext);
}

{id} {
	printf("%s is an identifier\n", yytext);
	count++;
}

{notid} {
	printf("%s is not an identifier\n", yytext);
}

%%

int main()
{
	FILE *fp;
	char file[10];
	printf("\nEnter the filename: ");
	scanf("%s", file);
	fp=fopen(file,"r");
	yyin=fp;
	yylex();
	printf("Total identifiers are: %d\n", count);
	return 0;
}