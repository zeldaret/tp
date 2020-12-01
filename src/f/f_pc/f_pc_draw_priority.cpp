
#include "global.h"
#include "f/f_pc/f_pc_draw_priority.h"

extern "C" {

int fpcDwPi_Get(draw_priority_class *pDwPi)
{
    return pDwPi->mPriority;
}

void fpcDwPi_Set(draw_priority_class *pDwPi, int p)
{
    pDwPi->mPriority = p;
}

void fpcDwPi_Init(draw_priority_class *pDwPi, int p)
{
    fpcDwPi_Set(pDwPi, p);
}

};
