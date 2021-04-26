
#ifndef F_PC_SEARCHER_H_
#define F_PC_SEARCHER_H_

#include "dolphin/types.h"
#include "f_pc/f_pc_base.h"

void* fpcSch_JudgeForPName(void* pProc, void* pUserData);
void* fpcSch_JudgeByID(void* pProc, void* pUserData);

extern "C" {
void fpcSch_JudgeForPName__FPvPv(void);
}

#endif
