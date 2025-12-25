package BasicLexer;

import org.antlr.v4.runtime.*;

public class Main {
    public static void main(String[] args) {
        // Example input string for tokenizing
        String input = "42+7-3*5";

        // Create a CharStream from the input
        CharStream charStream = CharStreams.fromString(input);

        // Create a lexer instance with the CharStream
        BasicLexer lexer = new BasicLexer(charStream);

        // Fetch tokens until EOF
        Token token;
        while ((token = lexer.nextToken()).getType() != Token.EOF) {
            // Get token symbolic name (e.g. IF, ID, NUMBER)
            String tokenName = lexer.getVocabulary().getSymbolicName(token.getType());

            // Print token type and text
            System.out.printf("Token: %-10s Text: %s\n", tokenName, token.getText());
        }
    }
}
