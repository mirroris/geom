#ifdef NODE_H
#define NODE_H

#ifdef VECTOR
#include<vector>
#endif

class Node {
    private:
        vector<Node *> child;
    public:
        virtual Node& apply(Operator);
        virtual Node& opt();
        virtual void dfs();
        virtual void visualize(); 
}
#endif
