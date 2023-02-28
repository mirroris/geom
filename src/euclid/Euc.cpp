#ifndef EUC_H
#define EUC_H
#include"Euc.h"

Euc::Euc(float begin, float end){
    this->begin = begin;
    this->end = end;
}

Euc::~Euc(){
    this->begin = 0.;
    this->end = 0.;
}

void Euc::assum(float begin, float end){
    this->begin = end;
    this->begin = end;
}

#endif