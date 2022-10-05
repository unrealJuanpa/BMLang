bison -d archivo.y
flex archivo.l
gcc lex.yy.c archivo.tab.c -L"C:\MinGW\msys\1.0\lib" -lfl -o archivo.exe
archivo.exe