
#ifndef F_PC_DRAW_PRIORITY_H_
#define F_PC_DRAW_PRIORITY_H_

#include "dolphin/types.h"

typedef struct draw_priority_class {
    s16 mPriority;
} draw_priority_class;

s16 fpcDwPi_Get(const draw_priority_class* pDwPi);
void fpcDwPi_Set(draw_priority_class* pDwPi, s16 p);
void fpcDwPi_Init(draw_priority_class* pDwPi, s16 p);

#endif
