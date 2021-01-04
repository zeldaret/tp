#ifndef __C_MATH_H_
#define __C_MATH_H_

#include "global.h"

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

#endif