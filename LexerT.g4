lexer grammar LexerT;

BEGIN: 'begin';
END: 'end';
PRINT: 'print';

NUMBER : [0-9]+ ;
WS : [ \t\r\n]+ -> skip ;