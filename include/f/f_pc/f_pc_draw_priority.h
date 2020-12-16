
#ifndef F_PC_DRAW_PRIORITY_H
#define F_PC_DRAW_PRIORITY_H

#include "compatibility_c_cpp.h"

typedef struct draw_priority_class {
    short mPriority;
} draw_priority_class;

BEGIN_C_DECLARATIONS

int fpcDwPi_Get(draw_priority_class *pDwPi);
void fpcDwPi_Set(draw_priority_class *pDwPi, int p);
void fpcDwPi_Init(draw_priority_class *pDwPi, int p);

END_C_DECLARATIONS

#endif
