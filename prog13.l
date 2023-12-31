%{
#include <stdio.h>
%}

%%

int|float|char|double    { printf("Keyword: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*   { printf("Identifier: %s\n", yytext); }
[0-9]+                  { printf("Constant: %s\n", yytext); }
[+\-*/]                 { printf("Operator: %s\n", yytext); }
[(),;{}]                { printf("Punctuation: %s\n", yytext); }
[ \t\n]                 ; // ignore whitespace

.                       { printf("Invalid token: %s\n", yytext); }

%%
int yywrap()
{
}

int main() {
    yylex();
    return 0;
}

