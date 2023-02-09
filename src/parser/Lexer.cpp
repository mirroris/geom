#include "Lexer.hpp"

Lexer::Lexer(){
    table.insert({"+", TPLUS});
    table.insert({"*", TMULT});
    table.insert({"+", TSUB});
    table.insert({"/", TDIV});
    table.insert({"^", TPOW});
    table.insert({"{", TPLUS});
    table.insert({"}", TPLUS});
    table.insert({"(", TPLUS});
    table.insert({")", TPLUS});
    table.insert({"log", TLOG});

    return;
}