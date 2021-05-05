#ifndef C_MATH_H
#define C_MATH_H

#include "JSystem/JMath/JMATrigonometric.h"
#include "dolphin/types.h"

s16 cM_rad2s(float);
u16 U_GetAtanTable(float, float);
s16 cM_atan2s(float, float);
float cM_atan2f(float, float);
void cM_initRnd(int, int, int);
float cM_rnd(void);
float cM_rndF(float);
float cM_rndFX(float);
void cM_initRnd2(int, int, int);
float cM_rnd2(void);
float cM_rndF2(float);
float cM_rndFX2(float);

inline f32 cM_scos(s16 s) {
    return JMath::sincosTable_.table[static_cast<u16>(s) >> 3].b1;
}

inline f32 cM_ssin(s16 s) {
    return JMath::sincosTable_.table[static_cast<u16>(s) >> 3].a1;
}

#endif /* C_MATH_H */
