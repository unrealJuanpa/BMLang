import os

name = ''.join([x for x in os.listdir() if x.endswith('.y')]).split('.')[0]

os.system('clear')
os.system(f'bison -d {name}.y')
os.system(f'flex {name}.l')
os.system(f'gcc lex.yy.c {name}.tab.c -lfl -o {name}')
#os.system(f'./{name}')
os.system(f'./{name} < prueba.ml')