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

inicio	: SI EOS								{ printf("Sintaxis correcta!\n"); return 0; }
		;

%%

void yyerror(char *mensaje) {
	fprintf(stderr, "Error: %s\n", mensaje);
}

int main() {
	yyparse();
	return 0;
}
