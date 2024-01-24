#ifndef MSL_ITERATOR_H_
#define MSL_ITERATOR_H_

namespace std {
template< class InputIt, class Distance >
inline void advance( InputIt& it, Distance n) {
    while (n > 0) {
        --n;
        ++it;
    }
}
}

#endif