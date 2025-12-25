lexer grammar BasicLexer;

// Keywords
IF      : 'if' ;
ELSE    : 'else' ;
WHILE   : 'while' ;
DO      : 'do' ;
FOR     : 'for' ;

// Operators
ADD     : '+' ;
SUB     : '-' ;
MUL     : '*' ;
DIV     : '/' ;

// Literals
NUMBER  : [0-9]+ ;

// Identifiers
ID      : [a-zA-Z_][a-zA-Z0-9_]* ;

// Whitespace and newlines
WS      : [ \t\r\n]+ -> skip ;
