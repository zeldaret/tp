
#include "f/f_pc/f_pc_searcher.h"
#include "f/f_pc/f_pc_base.h"

extern "C" {

void* fpcSch_JudgeForPName(base_process_class* pProc, void* pUserData) {
    s16 pname = *(s16*)pUserData;
    if (pProc->mProcName == pname)
        return pProc;
    return NULL;
}

void* fpcSch_JudgeByID(base_process_class* pProc, void* pUserData) {
    s32 id = *(s32*)pUserData;
    if (pProc->mBsPcId == id)
        return pProc;
    return NULL;
}

}