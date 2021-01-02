#ifndef F_PC_PAUSE
#define F_PC_PAUSE

#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_node.h"
#include "global.h"

extern "C" {

s32 fpcPause_IsEnable(void* pProc, u8 expected);
s32 fpcPause_Enable(void* pProc, u8 pauseMask);
s32 fpcPause_Disable(void* pProc, u8 pauseMask);
void fpcPause_Init(void* pProc);
};

#endif
