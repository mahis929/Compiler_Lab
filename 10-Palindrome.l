%{
	#include<stdio.h>
	void pal(char *, int);
%}

%%

[ ] {

}

[a-zA-Z]+ {
	pal(yytext, strlen(yytext));
}

%%

int main()
{
	yylex();
	return 0;
}

void pal(char *s, int n)
{
	int p = 1;
	for(int i = 0; i < n/2; i++)
	{
		if(s[i] != s[n-i-1])
		{
			p = 0;
			break;
		}
	}
	if(p)
	{
		printf("%s\n", s);
	}
}