#ifndef VECTOR
#define VECTOR
#include<vector>
#endif

#ifndef OPERATOR_H
#define OPERATOR_H
#include"operator.h"
#endif

#ifndef FACTOR_H
#define FACTOR_H

class Factor {
    private :
    Operator op;
    vector<Factor*> child;
    public :
    virtual Factor differential(Factor &child);
};

#endif