grammar ParserT;
import LexerT;

program   : TITULO print ESCRITOR print statement* FIN;

variables : personaje | encabezado | pagina;

personaje : ELEMENTNAME MAYUSCULAS+;
encabezado : ELEMENTNAME ORACION+;
pagina    : ELEMENTNAME 'Page' NUMERO;
          
statement : input | print | operaciones | estructuras;

operaciones : suma | resta | multiplicacion | division | coseno | seno | raiz;
estructuras : si | simientras | mientras ;
input     : INPUT ELEMENTNAME ':('(ORACION | NUMERO)+')';
print     : PRINT '*'(ORACION | NUMERO)+'*' | PRINT '('ELEMENTNAME (',' ELEMENTNAME)+')';

suma : ELEMENTNAME 'is along with' ELEMENTNAME;
resta : ELEMENTNAME 'sees' ELEMENTNAME;
multiplicacion : ELEMENTNAME 'moves to' ELEMENTNAME;
division : ELEMENTNAME 'cuts to' ELEMENTNAME;
coseno : COSENO ELEMENTNAME;
seno : SENO ELEMENTNAME;
raiz : RAIZ ELEMENTNAME;

si : 'If' '('logica')' ':' statement* 'DONE';
simientras : 'Do' statement* 'while' logica;
mientras : 'While' logica 'do' statement*;

logica : operador (('o' | 'y') operador)*;
operador : equal | notequal | mayor | menor;

equal : ELEMENTNAME 'is in' ELEMENTNAME ;
mayor : ELEMENTNAME 'is better than' ELEMENTNAME;
menor : ELEMENTNAME 'is worse than' ELEMENTNAME;
notequal : ELEMENTNAME 'is not in' ELEMENTNAME;