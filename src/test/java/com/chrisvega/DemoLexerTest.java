package com.chrisvega;

import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

public class DemoLexerTest {

    @Test
    public void matchID() throws IOException {
        String testString = "id1";
        Reader StringReader = new StringReader(testString);
        DemoLexer lexer = new DemoLexer(StringReader);
        Token token = lexer.yylex();
    }

}
