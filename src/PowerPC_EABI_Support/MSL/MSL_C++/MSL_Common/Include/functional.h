#ifndef MSL_FUNCTIONAL_H_
#define MSL_FUNCTIONAL_H_

namespace std {
template <class T> struct less {
    bool operator()(const T& a, const T& b) const {
        return a < b;
    }
};
}  // namespace std

#endif
