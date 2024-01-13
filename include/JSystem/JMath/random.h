#ifndef RANDOM_H
#define RANDOM_H

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

    s8 get_uint8(u8 param_0) {
        return get_ufloat_1() * param_0;
    }

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

#endif /* RANDOM_H */
