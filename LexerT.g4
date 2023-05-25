lexer grammar LexerT;

BEGIN: 'begin';
END: 'end';
PRINT: 'print';

NUMERO : [0-9]+ ;
PALABRA : (MINUSCULAS | MAYUSCULAS)+ ;
MINUSCULAS : [a-z] ;
MAYUSCULAS : [A-Z] ;

WS : [ \t\r\n]+ -> skip ;