enum func {
    CONST,
    SIN,
    COS,
    LOG,
    EPOW,
    POW
};

class Euc {
    private:
    float begin;
    float end;
    func type;
    vector<Euc> childs;
    public:
    Euc();
    Euc(float begin, float end);
    Euc(func type);
    ~Euc();
    void assum(float begin, float end);
    void build(func type);
};