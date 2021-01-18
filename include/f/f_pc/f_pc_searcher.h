
#ifndef F_PC_SEARCHER_H_
#define F_PC_SEARCHER_H_

#include "f/f_pc/f_pc_base.h"
#include "global.h"

extern "C" {

void* fpcSch_JudgeForPName(base_process_class* pProc, void* pUserData);
void* fpcSch_JudgeByID(base_process_class* pProc, void* pUserData);
};

#endif
