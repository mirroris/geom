#ifndef PARSER_H
#define PARSER_H

#include<vector>


class Parser {
    private:
        vector<string> varNameList;
        string tokenSet;

    public:
        Parser();
        ~Parser();
        string parse();
}


#endif