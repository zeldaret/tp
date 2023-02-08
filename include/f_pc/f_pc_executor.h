
#ifndef F_PC_EXECUTOR_H_
#define F_PC_EXECUTOR_H_

#include "SSystem/SComponent/c_node_iter.h"
#include "f_pc/f_pc_base.h"
#include "f_pc/f_pc_layer_iter.h"
#include "f_pc/f_pc_line_iter.h"

base_process_class* fpcEx_Search(fpcLyIt_JudgeFunc pFunc, void* pUserData);
base_process_class* fpcEx_SearchByID(unsigned int id);
BOOL fpcEx_IsExist(unsigned int id);
s32 fpcEx_ToLineQ(base_process_class* pProc);
s32 fpcEx_ExecuteQTo(base_process_class* pProc);
s32 fpcEx_Execute(base_process_class* pProc);
s32 fpcEx_ToExecuteQ(base_process_class* pProc);
void fpcEx_Handler(fpcLnIt_QueueFunc pFunc);

inline base_process_class* i_fpcM_Search(fpcLyIt_JudgeFunc pFunc, void* pUserData) {
    return fpcEx_Search(pFunc, pUserData);
}

extern "C" {
void fpcEx_IsExist__FUi(void);
}

#endif
