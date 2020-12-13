
#ifndef F_PC_DELETOR_H
#define F_PC_DELETOR_H

#include "global.h"
#include "f/f_pc/f_pc_base.h"

struct base_process_class;

extern "C" {

int fpcDt_IsComplete(void);
int fpcDt_ToDeleteQ(base_process_class *pProc);
int fpcDt_ToQueue(base_process_class *pProc);
void fpcDt_Handler(void);
int fpcDt_Delete(base_process_class *pProc);

};

#endif
