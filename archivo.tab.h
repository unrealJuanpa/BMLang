/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_ARCHIVO_TAB_H_INCLUDED
# define YY_YY_ARCHIVO_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    POTENCIA = 258,                /* POTENCIA  */
    MAS = 259,                     /* MAS  */
    MENOS = 260,                   /* MENOS  */
    ENTRE = 261,                   /* ENTRE  */
    POR = 262,                     /* POR  */
    PINICIO = 263,                 /* PINICIO  */
    PFIN = 264,                    /* PFIN  */
    LINICIO = 265,                 /* LINICIO  */
    LFIN = 266,                    /* LFIN  */
    MAYOR = 267,                   /* MAYOR  */
    MENOR = 268,                   /* MENOR  */
    MAYORIGUAL = 269,              /* MAYORIGUAL  */
    MENORIGUAL = 270,              /* MENORIGUAL  */
    IGUALCOMPARA = 271,            /* IGUALCOMPARA  */
    DIFERENTE = 272,               /* DIFERENTE  */
    YLOGICO = 273,                 /* YLOGICO  */
    OLOGICO = 274,                 /* OLOGICO  */
    TIENE = 275,                   /* TIENE  */
    EOS = 276,                     /* EOS  */
    EOL = 277,                     /* EOL  */
    COMA = 278,                    /* COMA  */
    INDENT = 279,                  /* INDENT  */
    DECLARA = 280,                 /* DECLARA  */
    INICIOPROGRAM = 281,           /* INICIOPROGRAM  */
    LEER = 282,                    /* LEER  */
    IMPRIMIR = 283,                /* IMPRIMIR  */
    SI = 284,                      /* SI  */
    ENTONCES = 285,                /* ENTONCES  */
    SINO = 286,                    /* SINO  */
    INICIOCOMENT = 287,            /* INICIOCOMENT  */
    FINCOMENT = 288,               /* FINCOMENT  */
    ENTERO = 289,                  /* ENTERO  */
    INOMBRE = 290,                 /* INOMBRE  */
    MIENTRAS = 291,                /* MIENTRAS  */
    CICLOPARA = 292,               /* CICLOPARA  */
    SBEGIN = 293,                  /* SBEGIN  */
    SEND = 294                     /* SEND  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_ARCHIVO_TAB_H_INCLUDED  */
