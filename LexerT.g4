lexer grammar LexerT;

TITULO: 'Title:';
ESCRITOR: 'by:';
FIN: 'end-of-script' ;

INPUT: 'write' ;
PRINT: 'show' ;

COSENO : 'Dissolve to:';
SENO : 'Smash cut to:';
RAIZ : 'Flashback to:';

ORACION : '"'(MINUSCULAS | MAYUSCULAS | SIMBOLO)+ (' ' (MINUSCULAS | MAYUSCULAS | SIMBOLO)+)*'"' ;
ELEMENTNAME : (MINUSCULAS | MAYUSCULAS | NUMERO)+;

MINUSCULAS : [a-z]+ ;
MAYUSCULAS : [A-Z]+ ;
NUMERO : [0-9]+ ;
SIMBOLO : '?' | '!' | '-' | '~' ;

WS : [ \t\r\n]+ -> skip ;