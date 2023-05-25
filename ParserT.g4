grammar ParserT;
import LexerT;

program   : BEGIN statement+ END;
          
statement : print ;

print     : PRINT '('NUMBER')';
