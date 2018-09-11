%{
#include<stdio.h>
int x = 0;
%}

%%

[a][a-zA-Z]*[w] {
	x = 1;
}

. {

}

%%

int main()
{
	yylex();
	if(x)
	{
		printf("Yes\n");
	}
	else
	{
		printf("No\n");
	}
	return 0;
}