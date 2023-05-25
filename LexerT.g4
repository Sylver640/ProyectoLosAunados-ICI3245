lexer grammar LexerT;

BEGIN: 'begin';
END: 'end';
PRINT: 'print';

PALABRA : (MINUSCULAS | MAYUSCULAS | NUMERO)+ ;
MINUSCULAS : [a-z] ;
MAYUSCULAS : [A-Z] ;
NUMERO : [0-9]+ ;

WS : [ \t\r\n]+ -> skip ;