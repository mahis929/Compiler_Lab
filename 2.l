%{

%}

%%

[^a-zA-Z0-9] {

}

. printf("%s",yytext);

%%

int main()
{
	yylex();
	return 0;
}