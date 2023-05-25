grammar ParserT;
import LexerT;

program   : TITULO statement ESCRITOR statement+ FIN;
          
statement : print;

print     : PRINT '('(PALABRA | NUMERO)+')';