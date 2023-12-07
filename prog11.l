%{
#include<stdio.h>
%}
alpha [a-zA-Z0-9]*
%%
[0-9]* {printf("%s IS DIGIT",yytext);}
[a-zA-Z]* {printf("\n%s is character",yytext);}
{alpha} {printf("invalid string");}
%%
int yywrap()
{
}
int main()
{
printf("enter input");
yylex();
return 0;
}

