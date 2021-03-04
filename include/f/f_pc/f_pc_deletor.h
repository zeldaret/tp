
#ifndef F_PC_DELETOR_H_
#define F_PC_DELETOR_H_

#include "f/f_pc/f_pc_base.h"

struct base_process_class;

BOOL fpcDt_IsComplete(void);
s32 fpcDt_ToDeleteQ(base_process_class* pProc);
s32 fpcDt_ToQueue(base_process_class* pProc);
void fpcDt_Handler(void);
s32 fpcDt_Delete(base_process_class* pProc);

#endif
