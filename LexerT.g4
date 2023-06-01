lexer grammar LexerT;

TITULO: 'Title:';
ESCRITOR: 'by:';
FIN: 'end-of-script' ;

INPUT: 'write' ;
PRINT: 'show' ;

PALABRA : (MINUSCULAS | MAYUSCULAS) ;
MINUSCULAS : [a-z]+ ;
MAYUSCULAS : [A-Z]+ ;
NUMERO : [0-9]+ ;

COSENO : 'Dissolve to:';
SENO : 'Smash cut to:';
RAIZ : 'Flashback to:';

WS : [ \t\r\n]+ -> skip ;