#ifndef TOKEN_H
#define TOKEN_H

#include<vector>


class Tokenizer {
    private:
        vector<string> varNameList;
        string tokenSet;

    public:
        Tokenizer();
        ~Tokenizer();
        string parse();
}