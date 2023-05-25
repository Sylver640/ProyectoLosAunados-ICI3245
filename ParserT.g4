grammar ParserT;
import LexerT;

program   : TITULO statement+ FIN;
          
statement : print ;

print     : PRINT '('(PALABRA | NUMERO)+')';
