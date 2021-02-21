
#include "f/f_pc/f_pc_searcher.h"
#include "f/f_pc/f_pc_base.h"

void* fpcSch_JudgeForPName(void* pProc, void* pUserData) {
    s16 pname = *(s16*)pUserData;
    if (((base_process_class*)pProc)->mProcName == pname)
        return pProc;
    return NULL;
}

void* fpcSch_JudgeByID(void* pProc, void* pUserData) {
    s32 id = *(s32*)pUserData;
    if (((base_process_class*)pProc)->mBsPcId == id)
        return pProc;
    return NULL;
}