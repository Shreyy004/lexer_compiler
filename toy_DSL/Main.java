package practice;

import org.antlr.v4.runtime.*;

public class Main {

	public static void main(String[] args) {
        String input = """
        		circle 10 10 5
        		line 0 0 10 10
        		color red
        		""";
        CharStream charStream = CharStreams.fromString(input);
        prac lexer = new prac(charStream);

        Token token;
        while ((token = lexer.nextToken()).getType() != Token.EOF) {
            String tokenName = lexer.getVocabulary().getSymbolicName(token.getType());
            System.out.printf("Token: %-10s Text: %s\n", tokenName, token.getText());
        }
	}
}
