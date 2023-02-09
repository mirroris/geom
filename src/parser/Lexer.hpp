#ifndef LEXER_H
#define LEXER_H

class Lexer{
    private:
        static map<string, string> table;
        vector<Token> tokenSeq;
    public:
        Lexer();
        ~Lexer();
        void lex();
}

#end if