%{
#include "archivo.tab.h"
%}


%%
"^"                             { return POTENCIA;      }
"+"                             { return MAS;           }
"-"                             { return MENOS;         }
"/"                             { return ENTRE;         }
"*"                             { return POR;           }
"("                             { return PINICIO;       }
")"                             { return PFIN;          }
"{"                             { return LINICIO;       }
"}"                             { return LFIN;          }
"<"                             { return MAYOR;         }
">"                             { return MENOR;         }
">="                            { return MAYORIGUAL;    }
"<="                            { return MENORIGUAL;    }
"=="                            { return IGUALCOMPARA;  }
"<>"                            { return DIFERENTE;     }
"&&"                            { return YLOGICO;       }
"||"                            { return OLOGICO;       }
"="                             { return TIENE;         }
";"                             { return EOS;           }
"\n"+                           { return EOL;           }
","                             { return COMA;          }
" "" "*                         { return INDENT;        }                         
"DEC"                           { return DECLARA;       }
"MAIN"                          { return INICIOPROGRAM; }
"INPUT"                         { return LEER;          }
"OUTPUT"                        { return IMPRIMIR;      }
("IF"|"if")                     { return SI;            }
("THEN"|"then")                 { return ENTONCES;      }
("ELSE"|"else")                 { return SINO;          }
"/*"                            { return INICIOCOMENT;  }
"*/"                            { return FINCOMENT;     }
[0-9]+                          { return ENTERO;        }
[a-zA-Z]{1}([0-9]|[a-zA-Z])*    { return INOMBRE;       }
.			                    {  }

%%

