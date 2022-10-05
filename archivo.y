%{
#include <stdio.h>
void yyerror(char *mensaje);
int yylex();
%}


%token MAS
%token MENOS
%token ENTRE
%token POR
%token PINICIO
%token PFIN
%token LINICIO
%token LFIN
%token MAYOR
%token MENOR
%token MAYORIGUAL
%token MENORIGUAL
%token IGUALCOMPARA
%token DIFERENTE
%token YLOGICO
%token OLOGICO
%token TIENE
%token EOS
%token EOL
%token COMA
%token INDENT
%token DECLARA
%token INICIOPROGRAM
%token LEER
%token IMPRIMIR
%token SI
%token ENTONCES
%token SINO
%token INICIOCOMENT
%token FINCOMENT
%token ESPACIO
%token ENTERO
%token INOMBRE

%%

programa        : INICIOPROGRAM LINICIO EOL sentencia LFIN EOL 								{ printf("Sintaxis correcta!\n"); return 0; }              
		        ;

sentencia       : INDENT declaracion EOL sentencia
                | INDENT lectura EOL sentencia
                | INDENT asignacion EOL sentencia
                |
                ;

enumvar         : INOMBRE COMA enumvar
                | INOMBRE 
                ;

declaracion     : DECLARA INDENT enumvar EOS
                ; 

lectura         : LEER INDENT INOMBRE EOS
                ;

asignacion      : INOMBRE INDENT TIENE INDENT ENTERO EOS
                ;

%%

void yyerror(char *mensaje) {
	fprintf(stderr, "Error: %s\n", mensaje);
}

int main() {
	yyparse();
	return 0;
}
