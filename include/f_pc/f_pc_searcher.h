
#ifndef F_PC_SEARCHER_H_
#define F_PC_SEARCHER_H_

#include "f_pc/f_pc_base.h"
#include "f_pc/f_pc_layer_iter.h"

void* fpcSch_JudgeForPName(void* pProc, void* pUserData);
void* fpcSch_JudgeByID(void* pProc, void* pUserData);

extern "C" {
void fpcSch_JudgeForPName__FPvPv(void);
}

inline base_process_class* i_fpcM_SearchByName(s16 name) {
    return (base_process_class*)fpcLyIt_AllJudge(fpcSch_JudgeForPName, &name);
}

#endif
