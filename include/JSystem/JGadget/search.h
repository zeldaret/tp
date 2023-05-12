#ifndef SEARCH_H
#define SEARCH_H

#include "dolphin/types.h"
#include "global.h"

namespace JGadget {

//! @todo: mangled name isn't correct, fix this
//! Current: toValueFromIndex<PFdd_d>__7JGadgetFiPCPFdd_dUlRCPFdd_d
//!  Target: toValueFromIndex<PFdd_d>__7JGadgetFiPCPFdd_dUlRCPFdd_d_RCPFdd_d
template <typename T>
inline const T& toValueFromIndex(int idx, const T* pValue, u32 count, const T& fallback) {
    ASSERT(pValue != NULL);
    return (idx >= count) ? fallback : pValue[idx];
}

}  // namespace JGadget

#endif /* SEARCH_H */
