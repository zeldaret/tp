/**
 * f_pc_priority.cpp
 * Framework - Process Priority
 */

#include "f_pc/f_pc_priority.h"
#include "f_pc/f_pc_base.h"
#include "f_pc/f_pc_layer.h"

/* 80023130-80023150 0020+00 s=0 e=1 z=0  None .text fpcPi_IsInQueue__FP22process_priority_class
 */
s32 fpcPi_IsInQueue(process_priority_class* i_procPriority) {
    return cTg_IsUse(&i_procPriority->mBase);
}

/* 80023150-80023188 0038+00 s=1 e=0 z=0  None .text      fpcPi_QueueTo__FP22process_priority_class
 */
s32 fpcPi_QueueTo(process_priority_class* i_procPriority) {
    cTg_SingleCut(&i_procPriority->mBase);
    fpcLy_CancelQTo(&i_procPriority->mMtdTag);
    return 1;
}

/* ############################################################################################## */
/* 803F4E58-803F4E68 000C+04 s=2 e=0 z=0  None .bss       l_fpcPi_Queue */
static node_list_class l_fpcPi_Queue;

/* 80023188-80023214 008C+00 s=1 e=0 z=0  None .text      fpcPi_ToQueue__FP22process_priority_class
 */
s32 fpcPi_ToQueue(process_priority_class* i_procPriority) {
    u32 layer = i_procPriority->mInfoQ.mLayer;

    if (cTg_Addition(&l_fpcPi_Queue, &i_procPriority->mBase)) {
        if (layer != 0xFFFFFFFD) {
            layer_class* pLayer = fpcLy_Layer(layer);

            if (!fpcLy_ToCancelQ(pLayer, &i_procPriority->mMtdTag)) {
                cTg_SingleCut(&i_procPriority->mBase);
                return 0;
            }
        }

        return 1;
    }

    return 0;
}

/* 80023214-80023268 0054+00 s=1 e=0 z=0  None .text      fpcPi_GetFromQueue__Fv */
process_priority_class* fpcPi_GetFromQueue() {
    process_priority_class* i_procPriority = (process_priority_class*)cTg_GetFirst(&l_fpcPi_Queue);

    if (i_procPriority != NULL) {
        base_process_class* pProc = (base_process_class*)i_procPriority->mBase.mpTagData;
        process_priority_class* pProcPi = &pProc->mPi;
        fpcLy_CancelQTo(&pProcPi->mMtdTag);
        return pProcPi;
    }

    return NULL;
}

/* 80023268-800232B4 004C+00 s=1 e=1 z=0  None .text      fpcPi_Delete__FP22process_priority_class
 */
s32 fpcPi_Delete(process_priority_class* i_procPriority) {
    static process_priority_queue_info crear = {
        0xFFFFFFFF,
        0xFFFF,
        0xFFFF,
    };

    fpcPi_QueueTo(i_procPriority);
    i_procPriority->mInfoQ.mLayer = crear.mLayer;
    i_procPriority->mInfoQ.mListID = crear.mListID;
    i_procPriority->mInfoQ.mListPrio = crear.mListPrio;
    return 1;
}

/* 800232B4-800232E8 0034+00 s=2 e=0 z=0  None .text      fpcPi_IsNormal__FUiUsUs */
s32 fpcPi_IsNormal(unsigned int i_layer, u16 i_listID, u16 i_priority) {
    if ((i_layer < 0xFFFFFFFE) && (i_listID < 0xFFFE) && (i_priority < 0xFFFE))
        return 1;

    return 0;
}

/* 800232E8-80023428 0140+00 s=0 e=3 z=0  None .text
 * fpcPi_Change__FP22process_priority_classUiUsUs               */
s32 fpcPi_Change(process_priority_class* i_procPriority, unsigned int i_layer, u16 i_listID, u16 i_priority) {
    base_process_class* pProc = (base_process_class*)i_procPriority->mBase.mpTagData;
    BOOL changed = 0;

    if (pProc->mInitState == 3)
        return 0;

    if (!fpcPi_IsNormal(i_layer, i_listID, i_priority))
        return 0;

    i_procPriority->mInfoQ.mLayer = i_procPriority->mInfoCurr.mLayer;
    i_procPriority->mInfoQ.mListID = i_procPriority->mInfoCurr.mListID;
    i_procPriority->mInfoQ.mListPrio = i_procPriority->mInfoCurr.mListPrio;

    if (i_layer != 0xFFFFFFFD && i_procPriority->mInfoCurr.mLayer != i_layer) {
        i_procPriority->mInfoQ.mLayer = i_layer;
        changed = 1;
    }

    if (i_listID != 0xFFFD && i_procPriority->mInfoCurr.mListID != i_listID) {
        i_procPriority->mInfoQ.mListID = i_listID;
        changed = 1;
    }

    if (i_priority != 0xFFFD && i_procPriority->mInfoCurr.mListPrio != i_priority) {
        i_procPriority->mInfoQ.mListPrio = i_priority;
        changed = 1;
    }

    if (pProc->mInitState == 0 || pProc->mInitState == 1) {
        i_procPriority->mInfoCurr.mLayer = i_procPriority->mInfoQ.mLayer;
        i_procPriority->mInfoCurr.mListID = i_procPriority->mInfoQ.mListID;
        i_procPriority->mInfoCurr.mListPrio = i_procPriority->mInfoQ.mListPrio;
        return 1;
    }

    if (changed == 1)
        return fpcPi_ToQueue(i_procPriority);
    else
        return 0;
}

/* 80023428-800234BC 0094+00 s=0 e=1 z=0  None .text      fpcPi_Handler__Fv */
s32 fpcPi_Handler() {
    process_priority_class* i_procPriority;
    while (i_procPriority = fpcPi_GetFromQueue()) {
        base_process_class* pProc = (base_process_class*)i_procPriority->mBase.mpTagData;
        layer_management_tag_class* pLayerTag = &pProc->mLyTg;
        line_tag* pLineTag = &pProc->mLnTg;
        if (fpcLyTg_Move(pLayerTag, i_procPriority->mInfoQ.mLayer, i_procPriority->mInfoQ.mListID,
                         i_procPriority->mInfoQ.mListPrio) == 1) {
            fpcLnTg_Move(pLineTag, i_procPriority->mInfoCurr.mListID);
            i_procPriority->mInfoCurr.mLayer = i_procPriority->mInfoQ.mLayer;
            i_procPriority->mInfoCurr.mListID = i_procPriority->mInfoQ.mListID;
            i_procPriority->mInfoCurr.mListPrio = i_procPriority->mInfoQ.mListPrio;
        } else {
            return 0;
        }
    }

    return 1;
}

/* 800234BC-80023564 00A8+00 s=0 e=1 z=0  None .text
 * fpcPi_Init__FP22process_priority_classPvUiUsUs               */
s32 fpcPi_Init(process_priority_class* i_procPriority, void* i_data, unsigned int i_layer, u16 i_listID,
               u16 i_priority) {
    if (!fpcPi_IsNormal(i_layer, i_listID, i_priority))
        return 0;

    i_procPriority->mInfoQ.mLayer = i_layer;
    i_procPriority->mInfoQ.mListID = i_listID;
    i_procPriority->mInfoQ.mListPrio = i_priority;

    i_procPriority->mInfoCurr.mLayer = i_procPriority->mInfoQ.mLayer;
    i_procPriority->mInfoCurr.mListID = i_procPriority->mInfoQ.mListID;
    i_procPriority->mInfoCurr.mListPrio = i_procPriority->mInfoQ.mListPrio;
    cTg_Create(&i_procPriority->mBase, i_data);
    fpcMtdTg_Init(&i_procPriority->mMtdTag, (process_method_tag_func)fpcPi_Delete, i_procPriority);
    return 1;
}

/* ############################################################################################## */
/* 804505F0-804505F8 0008+00 s=0 e=5 z=1  None .sdata     None */
s8 data_804505F0 = 0xFF;