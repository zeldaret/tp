
#ifndef F_PC_SEARCHER_H
#define F_PC_SEARCHER_H

#include "global.h"
#include "f/f_pc/f_pc_base.h"

BEGIN_C_DECLARATIONS

void * fpcSch_JudgeForPName(base_process_class *pProc, void *pUserData);
void * fpcSch_JudgeByID(base_process_class *pProc, void *pUserData);

END_C_DECLARATIONS

#endif
