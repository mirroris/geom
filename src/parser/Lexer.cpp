#include "Lexer.hpp"

Lexer::Lexer(){
    table.insert({"+", TPLUS});
    table.insert({"*", TMULT});
    table.insert({"+", TSUB});
    table.insert({"/", TDIV});
    table.insert({"^", TPOW});
    table.insert({"{", TLBRACE});
    table.insert({"}", TRBREACE});
    table.insert({"(", TLPAREN});
    table.insert({")", TRPAREN});
    table.insert({"log", TLOG});
    return;
}

Lexer::lex(){
    
}