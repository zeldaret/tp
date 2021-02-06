#ifndef JSYSTEM_JMATH_H_
#define JSYSTEM_JMATH_H_

#include "dolphin/types.h"

struct sinCosTableEntry {
    f32 sin;
    f32 cos;
};

extern sinCosTableEntry lbl_80439A20[0x2000];  // JMath::JMath::sincosTable_

inline f32 cM_scos(s16 s) {
    return lbl_80439A20[(s & 0xFFFF) >> 3].cos;
}

inline f32 cM_ssin(s16 s) {
    return lbl_80439A20[(s & 0xFFFF) >> 3].sin;
}

#endif