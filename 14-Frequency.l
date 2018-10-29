%{
	#include<stdio.h>
	int a[200]={0},i,len,p;
%}

[a-zA-Z] {
	p = yytext[0];
	a[p]++;
}

.{ }

int main()
{
	printf("Enter the string : ");
	yylex();
	char c = 'a';
	for(i = 97; i <= 122; i++)
	{
		printf("%c : ",c);
		printf("%d",a[i+1]);
		c++;
	}
}