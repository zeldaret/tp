#ifndef __JSYSTEM_JMATH_RANDOM_H__
#define __JSYSTEM_JMATH_RANDOM_H__

#include "dolphin/types.h"

namespace JMath {
struct TRandom_fast_ {
    u32 value;

    TRandom_fast_(u32 value);
    u32 get(void) {
        value = (value * 0x19660d) + 0x3c6ef35f;
        return value;
    }

    u32 get_bit32(void) { return this->get(); }

    // due to the float constant, having this function inlined adds that float to data,
    // making it not match
    float get_ufloat_1(void) {
        // !@bug UB: in C++ it's not legal to read from an union member other
        // than the last one that was written to.
        union {
            f32 f;
            u32 s;
        } out;
        out.s = (this->get() >> 9) | 0x3f800000;
        return out.f - 1;
    }

    void setSeed(u32 seed) { value = seed; }
};
}  // namespace JMath

// needed for Z2Calc.cpp
extern "C" {
void __ct__Q25JMath13TRandom_fast_FUl(JMath::TRandom_fast_*, u32);
};

#endif