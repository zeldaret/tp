#ifndef MSL_BITSET_H_
#define MSL_BITSET_H_


namespace std {
template<size_t N> class __bitset_base {
public:
    __bitset_base();

    bool test(size_t pos) const;
    bool any() const;
    void set(size_t pos, bool val);
    void reset(size_t pos);
private:
    size_t data[N];
};

template<size_t N> class bitset : private __bitset_base<(N - 1) / sizeof(size_t) + 1> {
public:
    bitset();

    void set(size_t pos, bool val);
    void reset(size_t pos);
    bool test(size_t pos) const;
    bool any() const;
};
}  // namespace std

#endif
