lexer grammar LexerT;

TITULO: 'title:';
ESCRITOR: 'by:';

FIN: 'end-of-script' ;
PRINT: 'print' ;

NUMERO : [0-9]+ ;
PALABRA : (MINUSCULAS | MAYUSCULAS) ;
MINUSCULAS : [a-z]+ ;
MAYUSCULAS : [A-Z]+ ;

WS : [ \t\r\n]+ -> skip ;