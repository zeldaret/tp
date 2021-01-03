#ifndef __JSYSTEM_JMATH_RANDOM_H__
#define __JSYSTEM_JMATH_RANDOM_H__

#include "dolphin/types.h"

namespace JMath {
struct TRandom_fast_ {
    u32 value;

    TRandom_fast_(u32 value);
};
}  // namespace JMath

// needed for Z2Calc.cpp
extern "C" {
void __ct__Q25JMath13TRandom_fast_FUl(JMath::TRandom_fast_*, u32);
};

#endif