
#ifndef F_PC_DRAW_PRIORITY_H
#define F_PC_DRAW_PRIORITY_H

#include "global.h"

typedef struct draw_priority_class {
    s16 mPriority;
} draw_priority_class;

BEGIN_C_DECLARATIONS

s32 fpcDwPi_Get(draw_priority_class *pDwPi);
void fpcDwPi_Set(draw_priority_class *pDwPi, s32 p);
void fpcDwPi_Init(draw_priority_class *pDwPi, s32 p);

END_C_DECLARATIONS

#endif
