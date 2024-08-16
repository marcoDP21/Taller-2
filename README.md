# Taller-2
# README - Programas en LEX

## Contenido

1. **Programa 1: Conteo de líneas, palabras y caracteres**
2. **Programa 2: Traductor simple de inglés a español**
3. **Programa 3: Reconocimiento de números, símbolos y caracteres de una calculadora**
4. **Programa 4: Reconocimiento de tokens específicos**
5. **Programa 5: Clasificación de números complejos**

## Programa 1: Conteo de líneas, palabras y caracteres

### Descripción

Este programa en LEX cuenta el número de líneas, palabras y caracteres en un archivo de texto. Es útil para realizar un análisis básico del contenido de un archivo.

### Uso

Para utilizar este programa, simplemente ejecute el código en LEX con un archivo de texto como entrada. El programa devolverá el número total de líneas, palabras y caracteres en el archivo.

## Programa 2: Traductor simple de inglés a español

### Descripción

Este programa en LEX actúa como un traductor básico de inglés a español. Traduce 10 palabras específicas del inglés al español.

### Palabras Traducidas

- hello -> hola
- world -> mundo
- computer -> computadora
- program -> programa
- language -> lenguaje
- keyboard -> teclado
- mouse -> ratón
- screen -> pantalla
- file -> archivo
- user -> usuario

### Uso

Ejecute el programa en LEX con un archivo de texto que contenga las palabras en inglés. El programa devolverá el archivo con las palabras traducidas al español.

## Programa 3: Reconocimiento de números, símbolos y caracteres de una calculadora

### Descripción

Este programa en LEX reconoce los números, símbolos matemáticos y caracteres que se encuentran comúnmente en una calculadora.

### Uso

Ejecute el programa en LEX con una entrada que contenga expresiones matemáticas. El programa reconocerá y clasificará los números y símbolos utilizados.

## Programa 4: Reconocimiento de tokens específicos

### Descripción

Este programa en LEX reconoce una serie de tokens específicos, como números y operadores matemáticos, y devuelve el valor del token junto con el token en sí.

### Tokens Reconocidos

- NUMBER = 258
- ADD = 259 (+)
- SUB = 260 (-)
- MUL = 261 (*)
- DIV = 262 (/)
- ABS = 263 (abs)
- EOL = 264 (fin de línea)

### Ejemplo de Entrada y Salida

**Entrada:** `/ 34 + 45`

**Salida:**

- DIV = 262
- NUMBER = 258 (34)
- ADD = 259
- NUMBER = 258 (45)

### Uso

Proporcione una expresión matemática como entrada y el programa devolverá el token correspondiente para cada componente de la expresión.

## Programa 5: Clasificación de números complejos

### Descripción

Este programa en LEX clasifica y reconoce números complejos en un archivo de texto. Específicamente, identifica la parte real e imaginaria de los números complejos.

### Uso

Ejecute el programa con un archivo de texto que contenga números complejos. El programa clasificará y mostrará los componentes de cada número complejo.

## Ejecución de los Programas

Para ejecutar cualquiera de estos programas, siga estos pasos:

1. **Compilación:** Compile el archivo `.l` utilizando el compilador LEX.

   ```bash
   lex archivo.l

