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
    return JMath::sincosTable_.table[static_cast<u16>(s) >> 3].second;
}

inline f32 cM_ssin(s16 s) {
    return JMath::sincosTable_.table[static_cast<u16>(s) >> 3].first;
}

inline s16 cM_deg2s(f32 val) {
    return val * 182.04445f;
}

inline s16 i_cM_deg2s(f32 val) {
    return val;
}

inline f32 cM_fsin(f32 v) {
    return JMASSin(cM_rad2s(v));
}

inline f32 cM_sht2d(f32 v) {
    return v * 0.005493164f;
}

#endif /* C_MATH_H */
