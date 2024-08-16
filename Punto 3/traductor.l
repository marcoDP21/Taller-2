%{
#include <stdio.h>
%}

%%
[0-9]+            { printf("NUMBER: %s\n", yytext); }
"+"               { printf("ADD: %s\n", yytext); }
"-"               { printf("SUB: %s\n", yytext); }
"*"               { printf("MUL: %s\n", yytext); }
"/"               { printf("DIV: %s\n", yytext); }
"="               { printf("EQUALS: %s\n", yytext); }
"("               { printf("LPAREN: %s\n", yytext); }
")"               { printf("RPAREN: %s\n", yytext); }
\n                { printf("EOL\n"); }
.                 { printf("UNKNOWN: %s\n", yytext); }
%%

int main(void) {
    yylex();
    return 0;
}
