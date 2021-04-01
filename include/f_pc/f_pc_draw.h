#ifndef F_PC_DRAW_H_
#define F_PC_DRAW_H_

#include "SSystem/SComponent/c_node_iter.h"
#include "f_pc/f_pc_base.h"
#include "dolphin/types.h"

typedef int (*fpcDw_HandlerFunc)(void*, void*);
typedef int (*fpcDw_HandlerFuncFunc)(fpcDw_HandlerFunc);

s32 fpcDw_Execute(base_process_class* pProc);
s32 fpcDw_Handler(fpcDw_HandlerFuncFunc param_1, fpcDw_HandlerFunc param_2);

#endif