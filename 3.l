%{

%}

TYPE int|char|bool|float|void|for|do|while|if|else|return|void

%%

{TYPE} {
	
}

. printf("%s", yytext);

%%

int main()
{
	yylex();
	return 0;
}