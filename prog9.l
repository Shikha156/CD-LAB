%{
   
   #include<stdio.h>
%}
alpha[a-zA-Z]
digit[0-9]
%%
(float|int) {printf("\nkeyword");}
{alpha}({digit}|{alpha})* {printf("\nidentifier");}
{digit}({digit}|{alpha})* {printf("\ninvalid token");}
%%
int yywrap()
{
}
int main()
{
yylex();
return 0;
}

