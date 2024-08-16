%{
#include <stdio.h>

int line_count = 0;
int word_count = 0;
int char_count = 0;
%}

%%
\n              { line_count++; }  // Contar nueva línea
[ \t]+          { char_count += yyleng; }        // Contar espacios y tabulaciones
[a-zA-Z0-9]+ { char_count += yyleng; word_count++; }  // Contar palabras con caracteres acentuados
[.,;:!?\"\'-]+  { char_count += yyleng; }       // Contar signos de puntuación como caracteres
.               { char_count++; }                // Cualquier otro carácter
%%

int main() {
    printf("Por favor, ingrese el texto (CTRL+D para terminar):\n");

    yylex();  // Procesar la entrada del usuario

    printf("\nNúmero de líneas: %d\n", line_count);
    printf("Número de palabras: %d\n", word_count);
    printf("Número de caracteres: %d\n", char_count);

    return 0;
}
