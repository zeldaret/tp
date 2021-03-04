
#include "f/f_pc/f_pc_creator.h"
#include "dolphin/types.h"
#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_create_req.h"

BOOL fpcCt_IsCreatingByID(u32 id) {
    return fpcCtRq_IsCreatingByID(id);
}

s32 fpcCt_IsDoing(base_process_class* pProc) {
    return fpcCtRq_IsDoing(pProc->mpCtRq);
}

BOOL fpcCt_Abort(base_process_class* pProc) {
    return fpcCtRq_Cancel(pProc->mpCtRq);
}

void fpcCt_Handler(void) {
    fpcCtRq_Handler();
}