
#ifndef F_PC_DRAW_PRIORITY_H
#define F_PC_DRAW_PRIORITY_H

struct draw_priority_class {
    short mPriority;
};

extern "C" {

int fpcDwPi_Get(draw_priority_class* pDwPi);
void fpcDwPi_Set(draw_priority_class* pDwPi, int p);
void fpcDwPi_Init(draw_priority_class* pDwPi, int p);
};

#endif
