#ifndef SEARCH_H
#define SEARCH_H

#include "dolphin/os.h"
#include <iterator.h>
#include <functional.h>
#include <algorithm.h>

namespace JGadget {

namespace search {

template <typename T>
struct TExpandStride_ {};

template <>
struct TExpandStride_<s32> {
    static s32 get(s32 n) { return n << 3; }
};

}  // namespace search

//! @todo: mangled name isn't correct, fix this
//! Current: toValueFromIndex<PFdd_d>__7JGadgetFiPCPFdd_dUlRCPFdd_d
//!  Target: toValueFromIndex<PFdd_d>__7JGadgetFiPCPFdd_dUlRCPFdd_d_RCPFdd_d
template <typename T>
inline const T& toValueFromIndex(int idx, const T* pValue, u32 count, const T& fallback) {
    JUT_ASSERT(200, pValue!=NULL);
    u32 index = idx;
    if (index >= count) {
        return fallback;
    } else {
        return pValue[index];
    }
}

template <typename Category, typename T, typename Distance, typename Pointer, typename Reference>
struct TIterator : public std::iterator<Category, T, Distance, Pointer, Reference> {
};

template <typename Iterator, typename T, typename Predicate>
inline Iterator findUpperBound_binary_all(Iterator first, Iterator last, const T& val, Predicate p) {
    return std::upper_bound(first, last, val, p);
}

template <typename Iterator, typename T, typename Predicate>
inline Iterator findUpperBound_binary_begin(Iterator first, Iterator last, const T& val, Predicate p) {
    if (first == last) {
        return last;
    }

    typedef typename std::iterator_traits<Iterator>::difference_type difference_type;
    difference_type dist = std::distance(first, last);
    difference_type stride = 1;
    search::TExpandStride_<difference_type> expand;
    Iterator i = first;

    while (true) {
        if (p(val, *i)) {
            if (stride == 1) {
                return i;
            } else {
                break;
            }
        }
        first = i;
        dist -= stride;
        if (dist <= 0) {
            i = last;
            break;
        }
        i += stride;
        stride = expand.get(stride);
    }

    return findUpperBound_binary_all(first, i, val, p);
}

template <typename Iterator, typename T, typename Predicate>
inline Iterator findUpperBound_binary_end(Iterator first, Iterator last, const T& val, Predicate p) {
    if (first == last) {
        return last;
    }

    typedef typename std::iterator_traits<Iterator>::difference_type difference_type;
    --last;
    difference_type dist = std::distance(first, last);
    difference_type stride = 1;
    search::TExpandStride_<difference_type> expand;
    Iterator i = last;

    while (true) {
        if (!p(val, *i)) {
            if (stride == 1) {
                return ++i;
            } else {
                break;
            }
        }
        last = i;
        dist -= stride;
        if (dist <= 0) {
            i = first;
            break;
        }
        i -= stride;
        stride = expand.get(stride);
    }

    return findUpperBound_binary_all(i, ++last, val, p);
}

template <typename Iterator, typename T, typename Predicate>
inline Iterator findUpperBound_binary_current(Iterator first, Iterator last, Iterator current, const T& val, Predicate p) {
    return current == last || p(val, *current) ?
        findUpperBound_binary_end(first, current, val, p) :
        findUpperBound_binary_begin(current, last, val, p);
}

template <typename Iterator, typename T>
inline Iterator findUpperBound_binary_current(Iterator first, Iterator last, Iterator current, const T& val) {
    return findUpperBound_binary_current(first, last, current, val, std::less<T>());
}

}  // namespace JGadget

#endif /* SEARCH_H */
