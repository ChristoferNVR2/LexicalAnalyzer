package com.chrisvega;

import java.io.*;

%%
%public
%class DemoLexer

digit = [0-9]
letter = [a-zA-Z]
whitespace = [ \t\r]
%type Token

%eofval{

    return new Token(TokenConstant.EOF, null);

%eofval}
%%

{letter}({letter}|{digit})* {
    return new Token(TokenConstant.ID, yytext());
}

{digit}+ {
    return new Token(TokenConstant.NUM, yytext());
}

[^] {
    throw new Error("Illegal character <" + yytext() + ">");
}
