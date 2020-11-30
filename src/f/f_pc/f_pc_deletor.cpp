
#include "f/f_pc/f_pc_creator.h"
#include "f/f_pc/f_pc_deletor.h"
#include "f/f_pc/f_pc_base.h"

extern "C" {

int fpcDt_Delete(base_process_class *pProc)
{
    if (pProc != NULL) {
        if (fpcCt_IsDoing(pProc) == 1)
            return 0;

        if (pProc->mInitState == 3)
            return 0;

        return fpcDt_ToDeleteQ(pProc);
    } else {
        return 1;
    }
}

};
