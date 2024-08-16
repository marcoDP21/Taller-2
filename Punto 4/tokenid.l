%{
#include <stdio.h>
%}

%%
"+"            { printf("ADD: +\n"); }
"-"            { printf("SUB: -\n"); }
"*"            { printf("MUL: *\n"); }
"/"            { printf("DIV: /\n"); }
"|"            { printf("ABS: |\n"); }
[0-9]+         { printf("NUMBER: %s\n", yytext); }
"\n"           { printf("EOL: \\n\n"); } /*end of line*/
.              { printf("UNKNOWN: %s\n", yytext); }

%%
int main(void) {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
