%{

%}

%%

[a|e|i|o|u|A|E|I|O|U] {

}

. printf("%s", yytext);

%%

int main()
{
	yylex();
	return 0;
}