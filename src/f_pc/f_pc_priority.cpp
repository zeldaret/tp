/**
 * f_pc_priority.cpp
 * Framework - Process Priority
 */

#include "f_pc/f_pc_priority.h"
#include "f_pc/f_pc_base.h"
#include "f_pc/f_pc_layer.h"
#include "f_pc/f_pc_layer_tag.h"

/* 80023130-80023150 0020+00 s=0 e=1 z=0  None .text fpcPi_IsInQueue__FP22process_priority_class
 */
s32 fpcPi_IsInQueue(process_priority_class* pPi) {
    return cTg_IsUse(&pPi->mBase);
}

/* 80023150-80023188 0038+00 s=1 e=0 z=0  None .text      fpcPi_QueueTo__FP22process_priority_class
 */
s32 fpcPi_QueueTo(process_priority_class* pPi) {
    cTg_SingleCut(&pPi->mBase);
    fpcLy_CancelQTo(&pPi->mMtdTag);
    return 1;
}

/* ############################################################################################## */
/* 803F4E58-803F4E68 000C+04 s=2 e=0 z=0  None .bss       l_fpcPi_Queue */
static node_list_class l_fpcPi_Queue;

/* 80023188-80023214 008C+00 s=1 e=0 z=0  None .text      fpcPi_ToQueue__FP22process_priority_class
 */
s32 fpcPi_ToQueue(process_priority_class* pPi) {
    u32 layer = pPi->mInfoQ.mLayer;

    if (cTg_Addition(&l_fpcPi_Queue, &pPi->mBase)) {
        if (layer != 0xFFFFFFFD) {
            layer_class* pLayer = fpcLy_Layer(layer);

            if (!fpcLy_ToCancelQ(pLayer, &pPi->mMtdTag)) {
                cTg_SingleCut(&pPi->mBase);
                return 0;
            }
        }

        return 1;
    }

    return 0;
}

/* 80023214-80023268 0054+00 s=1 e=0 z=0  None .text      fpcPi_GetFromQueue__Fv */
process_priority_class* fpcPi_GetFromQueue(void) {
    process_priority_class* pPi = (process_priority_class*)cTg_GetFirst(&l_fpcPi_Queue);

    if (pPi != NULL) {
        base_process_class* pProc = (base_process_class*)pPi->mBase.mpTagData;
        process_priority_class* pProcPi = &pProc->mPi;
        fpcLy_CancelQTo(&pProcPi->mMtdTag);
        return pProcPi;
    }

    return NULL;
}

/* ############################################################################################## */
/* 804505E8-804505F0 0008+00 s=1 e=0 z=0  None .sdata     crear$2224 */
static process_priority_queue_info crear = {
    0xFFFFFFFF,
    0xFFFF,
    0xFFFF,
};

/* 80023268-800232B4 004C+00 s=1 e=1 z=0  None .text      fpcPi_Delete__FP22process_priority_class
 */
s32 fpcPi_Delete(process_priority_class* pPi) {
    fpcPi_QueueTo(pPi);
    pPi->mInfoQ.mLayer = crear.mLayer;
    pPi->mInfoQ.mListID = crear.mListID;
    pPi->mInfoQ.mListPrio = crear.mListPrio;
    return 1;
}

/* 800232B4-800232E8 0034+00 s=2 e=0 z=0  None .text      fpcPi_IsNormal__FUiUsUs */
s32 fpcPi_IsNormal(unsigned int layer, u16 listID, u16 priority) {
    if ((layer < 0xFFFFFFFE) && (listID < 0xFFFE) && (priority < 0xFFFE))
        return 1;

    return 0;
}

/* 800232E8-80023428 0140+00 s=0 e=3 z=0  None .text
 * fpcPi_Change__FP22process_priority_classUiUsUs               */
s32 fpcPi_Change(process_priority_class* pPi, unsigned int layer, u16 listID, u16 priority) {
    base_process_class* pProc = (base_process_class*)pPi->mBase.mpTagData;
    BOOL changed = 0;

    if (pProc->mInitState == 3)
        return 0;

    if (!fpcPi_IsNormal(layer, listID, priority))
        return 0;

    pPi->mInfoQ.mLayer = pPi->mInfoCurr.mLayer;
    pPi->mInfoQ.mListID = pPi->mInfoCurr.mListID;
    pPi->mInfoQ.mListPrio = pPi->mInfoCurr.mListPrio;

    if (layer != 0xFFFFFFFD && pPi->mInfoCurr.mLayer != layer) {
        pPi->mInfoQ.mLayer = layer;
        changed = 1;
    }

    if (listID != 0xFFFD && pPi->mInfoCurr.mListID != listID) {
        pPi->mInfoQ.mListID = listID;
        changed = 1;
    }

    if (priority != 0xFFFD && pPi->mInfoCurr.mListPrio != priority) {
        pPi->mInfoQ.mListPrio = priority;
        changed = 1;
    }

    if (pProc->mInitState == 0 || pProc->mInitState == 1) {
        pPi->mInfoCurr.mLayer = pPi->mInfoQ.mLayer;
        pPi->mInfoCurr.mListID = pPi->mInfoQ.mListID;
        pPi->mInfoCurr.mListPrio = pPi->mInfoQ.mListPrio;
        return 1;
    }

    if (changed == 1)
        return fpcPi_ToQueue(pPi);
    else
        return 0;
}

/* 80023428-800234BC 0094+00 s=0 e=1 z=0  None .text      fpcPi_Handler__Fv */
s32 fpcPi_Handler(void) {
    process_priority_class* pPi;
    while (pPi = fpcPi_GetFromQueue()) {
        base_process_class* pProc = (base_process_class*)pPi->mBase.mpTagData;
        layer_management_tag_class* pLayerTag = &pProc->mLyTg;
        line_tag* pLineTag = &pProc->mLnTg;
        if (fpcLyTg_Move(pLayerTag, pPi->mInfoQ.mLayer, pPi->mInfoQ.mListID,
                         pPi->mInfoQ.mListPrio) == 1) {
            fpcLnTg_Move(pLineTag, pPi->mInfoCurr.mListID);
            pPi->mInfoCurr.mLayer = pPi->mInfoQ.mLayer;
            pPi->mInfoCurr.mListID = pPi->mInfoQ.mListID;
            pPi->mInfoCurr.mListPrio = pPi->mInfoQ.mListPrio;
        } else {
            return 0;
        }
    }

    return 1;
}

/* 800234BC-80023564 00A8+00 s=0 e=1 z=0  None .text
 * fpcPi_Init__FP22process_priority_classPvUiUsUs               */
s32 fpcPi_Init(process_priority_class* pPi, void* pUserData, unsigned int layer, u16 listID,
               u16 priority) {
    if (!fpcPi_IsNormal(layer, listID, priority))
        return 0;

    pPi->mInfoQ.mLayer = layer;
    pPi->mInfoQ.mListID = listID;
    pPi->mInfoQ.mListPrio = priority;

    pPi->mInfoCurr.mLayer = pPi->mInfoQ.mLayer;
    pPi->mInfoCurr.mListID = pPi->mInfoQ.mListID;
    pPi->mInfoCurr.mListPrio = pPi->mInfoQ.mListPrio;
    cTg_Create(&pPi->mBase, pUserData);
    fpcMtdTg_Init(&pPi->mMtdTag, (process_method_tag_func)fpcPi_Delete, pPi);
    return 1;
}

/* ############################################################################################## */
/* 804505F0-804505F8 0008+00 s=0 e=5 z=1  None .sdata     None */
s8 data_804505F0 = 0xFF;
