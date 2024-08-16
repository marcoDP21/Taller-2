%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
// Declaración de la función antes de su uso
void print_complex_type(double real, double imag);
double real;  // Declara 'real' a nivel global para que sea accesible
double imag;  // Declara 'imag' a nivel global para que sea accesible
%}

%%
[ \t\n]+         ;  // Ignorar espacios y saltos de línea

-?[0-9]+(\.[0-9]+)?  { real = atof(yytext); }

-?[0-9]+(\.[0-9]+)?[iI]  { 
    imag = atof(yytext); 
    imag = (imag < 0) ? -1 : 1; 
    print_complex_type(real, imag); 
}

-?[0-9]+(\.[0-9]+)?([+-]-?[0-9]+(\.[0-9]+)?)[iI]  { 
    sscanf(yytext, "%lf%lf", &real, &imag); 
    print_complex_type(real, imag); 
}

[0-9]+(\.[0-9]+)?(cos|sin)  { 
    real = atof(yytext); 
    imag = 0; 
    print_complex_type(real, imag); 
}

.  { printf("Caracter no reconocido: %s\n", yytext); }

%%

void print_complex_type(double real, double imag) {
    if (real == 0 && imag == 0) {
        printf("El número complejo es 0\n");
    } else if (real == 0) {
        printf("El número es puramente imaginario\n");
    } else if (imag == 0) {
        printf("El número es puramente real\n");
    } else {
        printf("El número es un número complejo\n");
    }
}

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
