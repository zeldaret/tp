
#ifndef F_PC_EXECUTOR_H
#define F_PC_EXECUTOR_H

#include "SComponent/c_node_iter.h"
#include "f/f_pc/f_pc_base.h"

extern "C" {

base_process_class * fpcEx_Search(void *pFunc, void *pUserData);
base_process_class * fpcEx_SearchByID(u32 id);
bool fpcEx_IsExist(int id);
int fpcEx_ToLineQ(base_process_class *pProc);
int fpcEx_ExecuteQTo(base_process_class *pProc);
int fpcEx_Execute(base_process_class *pProc);
int fpcEx_ToExecuteQ(base_process_class *pProc);
void fpcEx_Handler(cNdIt_MethodFunc pFunc);

};

#endif
