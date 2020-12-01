
#include "f/f_pc/f_pc_creator.h"
#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_create_req.h"

extern "C" {

bool fpcCt_IsCreatingByID(unsigned int id)
{
    return fpcCtRq_IsCreatingByID(id);
}

int fpcCt_IsDoing(base_process_class *pProc)
{
    return fpcCtRq_IsDoing(pProc->mpCtRq);
}

void fpcCt_Abort(base_process_class *pProc)
{
    fpcCtRq_Cancel(pProc->mpCtRq);
}

void fpcCt_Handler(void)
{
    fpcCtRq_Handler();
}

};
