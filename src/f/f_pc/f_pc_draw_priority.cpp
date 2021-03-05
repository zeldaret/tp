#include "f/f_pc/f_pc_draw_priority.h"

s32 fpcDwPi_Get(const draw_priority_class* pDwPi) {
    return pDwPi->mPriority;
}

void fpcDwPi_Set(draw_priority_class* pDwPi, s16 p) {
    pDwPi->mPriority = p;
}

void fpcDwPi_Init(draw_priority_class* pDwPi, s16 p) {
    fpcDwPi_Set(pDwPi, p);
}