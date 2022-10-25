%{
#include <stdio.h>
void yyerror(char *mensaje);
int yylex();
%}

%token POTENCIA
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
%token ENTERO
%token INOMBRE
%token MIENTRAS
%token CICLOPARA
%token SBEGIN
%token SEND

%%

programa        : INICIOPROGRAM LINICIO EOL sentencia LFIN EOL 								{ printf("Sintaxis correcta!\n"); return 0; }              
		        ;

desgcoment      : espaciomas INOMBRE espaciomas desgcoment
                | espaciomas ENTERO espaciomas desgcoment
                | 
                ;

sentencia       : INDENT declaracion EOL sentencia
                | INDENT lectura EOL sentencia
                | INDENT asignacion EOL sentencia
                | INDENT MIENTRAS PINICIO compcondicion PFIN EOL INDENT SBEGIN EOL INDENT EOL INDENT SEND EOL sentencia
                | INDENT SI PINICIO compcondicion PFIN EOL INDENT SBEGIN EOL INDENT EOL INDENT SEND EOL sentencia
                | INDENT INICIOCOMENT desgcoment FINCOMENT EOL sentencia
                | INDENT EOL sentencia
                | EOL sentencia
                | 
                ;

enumvar         : INOMBRE COMA enumvar
                | INOMBRE 
                ;

declaracion     : DECLARA INDENT enumvar EOS
                ; 

lectura         : LEER INDENT INOMBRE EOS
                ;

asignacion      : INOMBRE espaciomas TIENE espaciomas ENTERO operacion EOS
                | INOMBRE espaciomas TIENE espaciomas INOMBRE operacion EOS
                ;

espaciomas      : INDENT
                | 
                ;

operador        : MAS
                | MENOS
                | ENTRE
                | POR
                | POTENCIA
                ;

operacion       : espaciomas operador espaciomas ENTERO operacion
                | espaciomas operador espaciomas INOMBRE operacion
                |
                ;

comparador      : MAYOR
                | MENOR
                | MAYORIGUAL
                | MENORIGUAL
                | IGUALCOMPARA
                ;

condicion       : INOMBRE comparador ENTERO
                | ENTERO comparador INOMBRE
                | ENTERO comparador ENTERO
                ;

logop           : YLOGICO
                | OLOGICO
                ;

addcondicion    : espaciomas logop espaciomas condicion addcondicion
                |
                ;

compcondicion   : condicion
                | condicion addcondicion
                ;



%%

void yyerror(char *mensaje) {
	fprintf(stderr, "Error: %s\n", mensaje);
}

int main() {
	yyparse();
	return 0;
}
