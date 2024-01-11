%{
#include<stdio.h>
%}

%token NUM 
%left '+'
%right '-'

%%
expr:e {printf("valid expression\n"); printf("result : %d\n",$$);return 0;}
e:e'+'e {$$=$1+$3;}
| e:e'-'e {$$=$1-$3;}
| NUM {$$=$1;}
;
%%
int main()
{
printf("\n enter an arithmetic expression\n");
yyparse();
return 0;
}
int yyerror()
{
printf("\nInvalid expression\n");
return 0;
}



