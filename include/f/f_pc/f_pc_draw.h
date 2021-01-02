#ifndef F_PC_DRAW_H
#define F_PC_DRAW_H

#include "SComponent/c_node_iter.h"
#include "f/f_pc/f_pc_base.h"
#include "global.h"

typedef s32 (*cNdIt_MethodFuncFunc)(cNdIt_MethodFunc);

extern "C" {

s32 fpcDw_Execute(base_process_class* pProc);
s32 fpcDw_Handler(cNdIt_MethodFuncFunc param_1, cNdIt_MethodFunc param_2);
};

#endif