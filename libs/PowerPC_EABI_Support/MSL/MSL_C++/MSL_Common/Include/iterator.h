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

// This needs to be defined with gcc concepts or something similar. Workaround.
template< class InputIt, class Distance >
inline void advance_pointer( InputIt& it, Distance n) {
    it += n;
}

}

#endif