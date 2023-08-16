/**
 * f_pc_deletor.cpp
 * Framework - Process Deletor
 */

#include "f_pc/f_pc_deletor.h"
#include "SSystem/SComponent/c_list_iter.h"
#include "f_pc/f_pc_creator.h"
#include "f_pc/f_pc_executor.h"
#include "f_pc/f_pc_load.h"
#include "f_pc/f_pc_node.h"

/* 80021040-80021060 0020+00 s=0 e=1 z=0  None .text      fpcDt_IsComplete__Fv */
BOOL fpcDt_IsComplete() {
    return fpcDtTg_IsEmpty();
}

/* 80021060-800210D4 0074+00 s=1 e=0 z=0  None .text      fpcDt_deleteMethod__FP18base_process_class
 */
s32 fpcDt_deleteMethod(base_process_class* i_proc) {
    layer_class* layer = i_proc->mDtTg.mpLayer;
    s16 typeID = i_proc->mBsTypeId;

    fpcLy_SetCurrentLayer(layer);
    fpcLnTg_QueueTo(&i_proc->mLnTg);
    if (fpcBs_Delete(i_proc) == 1) {
        fpcLy_DeletedMesg(layer);
        fpcLd_Free(typeID);
        return 1;
    } else {
        return 0;
    }
}

/* 800210D4-8002110C 0038+00 s=0 e=1 z=0  None .text      fpcDt_Handler__Fv */
void fpcDt_Handler(void) {
    cLsIt_Method(&g_fpcDtTg_Queue, (cNdIt_MethodFunc)fpcDtTg_Do, fpcDt_deleteMethod);
}

/* 8002110C-80021188 007C+00 s=1 e=0 z=0  None .text      fpcDt_ToQueue__FP18base_process_class */
s32 fpcDt_ToQueue(base_process_class* i_proc) {
    if (i_proc->mUnk0 != 1 && fpcBs_IsDelete(i_proc) == 1) {
        if (fpcPi_IsInQueue(&i_proc->mPi) == 1) {
            fpcPi_Delete(&i_proc->mPi);
        }
        i_proc->mDtTg.mpLayer = i_proc->mLyTg.mpLayer;
        fpcDtTg_ToDeleteQ(&i_proc->mDtTg);
        fpcLy_DeletingMesg(i_proc->mLyTg.mpLayer);
        return 1;
    } else {
        return 0;
    }
}

/* 80021188-800212A4 011C+00 s=1 e=0 z=0  None .text      fpcDt_ToDeleteQ__FP18base_process_class */
s32 fpcDt_ToDeleteQ(base_process_class* i_proc) {
    if (i_proc->mUnk0 == 1) {
        return 0;
    } else {
        if (cTg_IsUse(&i_proc->mDtTg.mBase) != 0) {
            return 1;
        } else {
            if (fpcBs_Is_JustOfType(g_fpcNd_type, i_proc->mSubType)) {
                process_node_class* procNode = (process_node_class*)i_proc;
                if (fpcNd_IsDeleteTiming(procNode) == 0) {
                    return 0;
                } else {
                    layer_class* layer = &procNode->mLayer;
                    fpcLy_Cancel(layer);
                    if (fpcLyIt_OnlyHereLY(layer, (fpcLyIt_OnlyHereFunc)fpcDt_ToDeleteQ, NULL) == 0)
                    {
                        return 0;
                    }
                }
            }

            if (fpcDt_ToQueue(i_proc) == 1) {
                // return type has to be BOOL
                if (fpcEx_IsExist(i_proc->mBsPcId) == 1) {
                    if (fpcEx_ExecuteQTo(i_proc) == 0) {
                        return 0;
                    }
                } else {
                    // return type is wrong, has to be BOOL
                    if (fpcCt_Abort(i_proc) == 0) {
                        return 0;
                    }
                }
                i_proc->mInitState = 3;
                return 1;
            } else {
                return 0;
            }
        }
    }
}

/* 800212A4-80021308 0064+00 s=0 e=3 z=0  None .text      fpcDt_Delete__FPv */
s32 fpcDt_Delete(void* i_proc) {
    base_process_class* proc = static_cast<base_process_class*>(i_proc);
    if (proc != NULL) {
        if (fpcCt_IsDoing(proc) == 1)
            return 0;

        if (proc->mInitState == 3)
            return 0;

        return fpcDt_ToDeleteQ(proc);
    } else {
        return 1;
    }
}
