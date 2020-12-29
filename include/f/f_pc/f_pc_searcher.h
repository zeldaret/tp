
#ifndef F_PC_SEARCHER_H
#define F_PC_SEARCHER_H

#include "global.h"

struct base_process_class;

extern "C" {

void* fpcSch_JudgeForPName(base_process_class* pProc, void* pUserData);
void* fpcSch_JudgeByID(base_process_class* pProc, void* pUserData);
};

#endif
