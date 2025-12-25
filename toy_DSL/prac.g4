lexer grammar prac;

IF      : 'if' ;
ELSE    : 'else' ;
LET		: 'let';
PRINT	: 'print';
COLOR	 : 'color';

// Identifiers and literals
ID      : [a-zA-Z_][a-zA-Z0-9_]* ;
NUMBER  : [0-9]+ ('.' [0-9]+)? ;
String : STRING+EOF;
STRING : '"' ( ~["\\] | '\\' .)* '"';

AND	: 'AND';
OR	: 'OR';
NOT	: 'NOT';
TRUE : 'TRUE';
FALSE : 'FALSE';
LPAREN : '(';
RPAREN : ')';
DOT	: '.';
LBRACE  : '{';
RBRACE  : '}';
COLON   : ':';
COMMA	: ',';
NULL	: 'NULL';
EQUAL	: '=';
SEMICOLON : ';';
GREATER  : '>';
LESSER   : '<';
LINE	 : 'line';
CIRCLE	 : 'circle';

// Whitespace and newlines
WS      : [ \t\r\n]+ -> skip ;
