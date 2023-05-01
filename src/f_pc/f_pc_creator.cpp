/**
 * f_pc_creator.cpp
 * Framework - Process Creator
 */

#include "f_pc/f_pc_creator.h"
#include "f_pc/f_pc_base.h"
#include "f_pc/f_pc_create_req.h"

//
// Declarations:
//

/* 80020EA8-80020EC8 0020+00 s=0 e=1 z=0  None .text      fpcCt_IsCreatingByID__FUi */
BOOL fpcCt_IsCreatingByID(unsigned int i_id) {
    return fpcCtRq_IsCreatingByID(i_id);
}

/* 80020EC8-80020EEC 0024+00 s=0 e=1 z=0  None .text      fpcCt_IsDoing__FP18base_process_class */
s32 fpcCt_IsDoing(base_process_class* i_proc) {
    return fpcCtRq_IsDoing(i_proc->mpCtRq);
}

/* 80020EEC-80020F10 0024+00 s=0 e=1 z=0  None .text      fpcCt_Abort__FP18base_process_class */
BOOL fpcCt_Abort(base_process_class* i_proc) {
    return fpcCtRq_Cancel(i_proc->mpCtRq);
}

/* 80020F10-80020F30 0020+00 s=0 e=1 z=0  None .text      fpcCt_Handler__Fv */
void fpcCt_Handler() {
    fpcCtRq_Handler();
}
