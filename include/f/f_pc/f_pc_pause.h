#ifndef F_PC_PAUSE
#define F_PC_PAUSE

#include "global.h"
#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_node.h"

extern "C" {

s32 fpcPause_IsEnable(base_process_class *pProc, u8 expected);
s32 fpcPause_Enable(process_node_class *pProc, u8 pauseMask);
s32 fpcPause_Disable(process_node_class *pProc, u8 pauseMask);
void fpcPause_Init(base_process_class *pProc);

}

#endif
