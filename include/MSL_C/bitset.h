#ifndef MSL_BITSET_H_
#define MSL_BITSET_H_


namespace std {
template<size_t N> class bitset {
    bitset();

    void set(size_t pos, bool val);
    void reset(size_t pos);
    bool test(size_t pos) const;
};
}  // namespace std

#endif
