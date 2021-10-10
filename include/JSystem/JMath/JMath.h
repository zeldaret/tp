#ifndef JMATH_H
#define JMATH_H

#include "dolphin/mtx/mtx.h"
#include "dolphin/types.h"

void JMAMTXApplyScale(const Mtx, Mtx, f32, f32, f32);

inline f32 JMAFastReciprocal(f32 value) {
    return __fres(value);
}

namespace JMath {

inline f32 fastReciprocal(f32 value) {
    return JMAFastReciprocal(value);
}

};  // namespace JMath

#endif /* JMATH_H */
