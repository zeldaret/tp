
#include "f/f_pc/f_pc_searcher.h"
#include "f/f_pc/f_pc_base.h"

extern "C" {

void * fpcSch_JudgeForPName(base_process_class *pProc, void *pUserData)
{
    short pname = *(short*)pUserData;
    if (pProc->mProcName == pname)
        return pProc;
    return NULL;
}

void * fpcSch_JudgeByID(base_process_class *pProc, void *pUserData)
{
    int id = *(int*)pUserData;
    if (pProc->mBsPcId == id)
        return pProc;
    return NULL;
}

};
