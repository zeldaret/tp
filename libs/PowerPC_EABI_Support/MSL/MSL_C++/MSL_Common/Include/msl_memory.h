#ifndef MSL_MEMORY_H_
#define MSL_MEMORY_H_

namespace std {

template<class ForwardIt, class Size, class T>
inline ForwardIt uninitialized_fill_n(ForwardIt first, Size count, const T& value) {
    for (; count > 0; ++first, (void) --count) {
        *first = value;
    }
    return first;
}

template<class InputIt, class NoThrowForwardIt>
inline NoThrowForwardIt uninitialized_copy(InputIt first, InputIt last, NoThrowForwardIt d_first) {
    for (; first != last; ++first, ++d_first) {
        *d_first = *first;
    }
    return d_first;
}

}

#endif
