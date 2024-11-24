
#ifndef F_PC_DELETOR_H_
#define F_PC_DELETOR_H_

#include "dolphin/types.h"

typedef struct base_process_class base_process_class;

BOOL fpcDt_IsComplete();
s32 fpcDt_ToDeleteQ(base_process_class* i_proc);
s32 fpcDt_ToQueue(base_process_class* i_proc);
void fpcDt_Handler();
s32 fpcDt_Delete(void* i_proc);

#endif
