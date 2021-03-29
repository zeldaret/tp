
#include "f/f_pc/f_pc_deletor.h"
#include "SComponent/c_list_iter.h"
#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_creator.h"
#include "f/f_pc/f_pc_executor.h"
#include "f/f_pc/f_pc_layer.h"
#include "f/f_pc/f_pc_layer_iter.h"
#include "f/f_pc/f_pc_node.h"

// g_fpcDtTg_Queue
extern node_list_class lbl_803A39A0;
// g_fpcNd_type
extern s32 g_fpcNd_type;

BOOL fpcLd_Use(s16 procName);
s32 fpcLd_IsLoaded(s16 procName);
void fpcLd_Free(s16 procName);
s32 fpcLd_Load(s16 procName);

BOOL fpcDt_IsComplete() {
    return fpcDtTg_IsEmpty();
}

s32 fpcDt_deleteMethod(base_process_class* pProc) {
    layer_class* layer = pProc->mDtTg.mpLayer;
    s16 typeID = pProc->mBsTypeId;

    fpcLy_SetCurrentLayer(layer);
    fpcLnTg_QueueTo(&pProc->mLnTg);
    if (fpcBs_Delete(pProc) == 1) {
        fpcLy_DeletedMesg(layer);
        fpcLd_Free(typeID);
        return 1;
    } else {
        return 0;
    }
}

void fpcDt_Handler(void) {
    cLsIt_Method(&lbl_803A39A0, (cNdIt_MethodFunc)fpcDtTg_Do, fpcDt_deleteMethod);
}

s32 fpcDt_ToQueue(base_process_class* pProc) {
    if (pProc->mUnk0 != 1 && fpcBs_IsDelete(pProc) == 1) {
        if (fpcPi_IsInQueue(&pProc->mPi) == 1) {
            fpcPi_Delete(&pProc->mPi);
        }
        pProc->mDtTg.mpLayer = pProc->mLyTg.mpLayer;
        fpcDtTg_ToDeleteQ(&pProc->mDtTg);
        fpcLy_DeletingMesg(pProc->mLyTg.mpLayer);
        return 1;
    } else {
        return 0;
    }
}

s32 fpcDt_ToDeleteQ(base_process_class* pProc) {
    if (pProc->mUnk0 == 1) {
        return 0;
    } else {
        if (cTg_IsUse(&pProc->mDtTg.mBase) != 0) {
            return 1;
        } else {
            if (fpcBs_Is_JustOfType(g_fpcNd_type, pProc->mSubType) != 0) {
                process_node_class* procNode = (process_node_class*)pProc;
                if (fpcNd_IsDeleteTiming(procNode) == 0) {
                    return 0;
                } else {
                    layer_class* layer = &procNode->mLayer;
                    fpcLy_Cancel(layer);
                    if (fpcLyIt_OnlyHereLY(layer, (fpcLyIt_OnlyHereFunc)fpcDt_ToDeleteQ, NULL) ==
                        0) {
                        return 0;
                    }
                }
            }
            if (fpcDt_ToQueue(pProc) == 1) {
                // return type has to be BOOL
                if (fpcEx_IsExist(pProc->mBsPcId) == 1) {
                    if (fpcEx_ExecuteQTo(pProc) == 0) {
                        return 0;
                    }
                } else {
                    // return type is wrong, has to be BOOL
                    if (fpcCt_Abort(pProc) == 0) {
                        return 0;
                    }
                }
                pProc->mInitState = 3;
                return 1;
            } else {
                return 0;
            }
        }
    }
}

s32 fpcDt_Delete(void* pProcV) {
    base_process_class* pProc = static_cast<base_process_class*>(pProcV);
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