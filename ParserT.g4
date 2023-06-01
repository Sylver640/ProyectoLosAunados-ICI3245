grammar ParserT;
import LexerT;

program   : TITULO print ESCRITOR print statement* FIN;

variables : personaje | encabezado | pagina;

personaje : MAYUSCULAS;
encabezado : (PALABRA | NUMERO)+;
pagina    : 'Page' NUMERO;
          
statement : input | print | operaciones;

operaciones : suma | resta | multiplicacion | division | coseno | seno | raiz;
suma : MAYUSCULAS 'says: ' (PALABRA | NUMERO)+;
resta : '('')';
multiplicacion : 'b';
division : 'Cuts to: '(PALABRA)+;
coseno : 'c';
seno : 'd';
raiz : 'e';

input     : INPUT '('(PALABRA | NUMERO)+')';
print     : PRINT '"'(PALABRA | NUMERO)+'"';