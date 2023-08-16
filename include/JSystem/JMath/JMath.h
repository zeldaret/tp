#ifndef JMATH_H
#define JMATH_H

#include "dolphin/mtx/mtx.h"

void JMAMTXApplyScale(const Mtx, Mtx, f32, f32, f32);
void JMAEulerToQuat(s16 param_0, s16 param_1, s16 param_2, Quaternion* param_3);

inline f32 JMAFastReciprocal(f32 value) {
    return __fres(value);
}

inline float __frsqrtes(register double f) {
    register float out;
    // clang-format off
    asm {
        frsqrte out, f
    }
    // clang-format on
    return out;
}

inline f32 JMAFastSqrt(register f32 input) {
    if (input > 0.0f) {
        register f32 out;
        asm {
            frsqrte out, input
        }
        return out * input;
    } else {
        return input;
    }
}

namespace JMath {

inline f32 fastReciprocal(f32 value) {
    return JMAFastReciprocal(value);
}

};  // namespace JMath

#endif /* JMATH_H */
