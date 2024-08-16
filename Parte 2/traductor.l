%{
#include <stdio.h>
#include <string.h>

// Función auxiliar para traducir palabras en plural
char* translate_plural(const char* singular, const char* plural) {
    static char buffer[50];
    strcpy(buffer, plural);
    if (yyleng > strlen(singular)) {
        strcat(buffer, "s");
    }
    return buffer;
}
%}

%%

"cat"               { printf("gato "); }
"cats"              { printf("gatos "); }
"dog"               { printf("perro "); }
"dogs"              { printf("perros "); }
"house"             { printf("casa "); }
"houses"            { printf("casas "); }
"car"               { printf("coche "); }
"cars"              { printf("coches "); }
"tree"              { printf("árbol "); }
"trees"             { printf("árboles "); }
"book"              { printf("libro "); }
"books"             { printf("libros "); }
"computer"          { printf("computadora "); }
"computers"         { printf("computadoras "); }
"phone"             { printf("teléfono "); }
"phones"            { printf("teléfonos "); }
"child"             { printf("niño "); }
"children"          { printf("niños "); }
"man"               { printf("hombre "); }
"men"               { printf("hombres "); }

.                   { printf("%s", yytext); }  // Para cualquier otro texto, imprimir tal cual

%%

int main(int argc, char **argv) {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
