lexer grammar LexerT;

TITULO: 'Title:';
ESCRITOR: 'by:';
FIN: 'end-of-script' ;

INPUT: 'write' ;
PRINT: 'show' ;

COSENO : 'Dissolve to:';
SENO : 'Smash cut to:';
RAIZ : 'Flashback to:';

ELEMENTNAME : PALABRA;
ORACION : PALABRA (' ' PALABRA)* ;

PALABRA : (MINUSCULAS | MAYUSCULAS | SIMBOLO)+ ;
MINUSCULAS : [a-z]+ ;
MAYUSCULAS : [A-Z]+ ;
NUMERO : [0-9]+ ;
SIMBOLO : '?' | '!' | '-' | '~' ;

WS : [ \t\r\n]+ -> skip ;