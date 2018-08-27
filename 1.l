%{
int w = 0;
int ch = 0;
%}

%%

[a-zA-Z0-9]+ {
	ch = strlen(yytext);
	if(ch >= 10)
	{
		w++;
	}
}

"\n" {
	printf("%d\n", w);
	w = 0;
}

%%

int main()
{
	yylex();
	return 0;
}