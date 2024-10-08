/**
 * f_pc_searcher.cpp
 * Framework - Process Searcher
 */

#include "f_pc/f_pc_searcher.h"

/* 80023578-80023590 0018+00 s=0 e=3 z=77  None .text      fpcSch_JudgeForPName__FPvPv */
void* fpcSch_JudgeForPName(void* i_proc, void* i_data) {
    s16 proc_name = *(s16*)i_data;

    if (((base_process_class*)i_proc)->mProcName == proc_name)
        return i_proc;
    return NULL;
}

/* 80023590-800235A8 0018+00 s=0 e=44 z=270  None .text      fpcSch_JudgeByID__FPvPv */
void* fpcSch_JudgeByID(void* i_proc, void* i_data) {
    s32 process_id = *(s32*)i_data;

    if (((base_process_class*)i_proc)->mBsPcId == process_id)
        return i_proc;
    return NULL;
}