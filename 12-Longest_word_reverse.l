%{
int len = 0;
char *ch;
%}

%%

[a-zA-Z0-9]+ {
	if(yyleng > len)
	{
		ch = yytext;
		len = yyleng;
	}
}

%%

int main()
{
	yyin = fopen("in.txt", "r");
	yylex();
	for(int i = len-1; i >= 0; i--)
	{
		printf("%c",ch[i]);
	}
	printf("\n");
	return 0;
}