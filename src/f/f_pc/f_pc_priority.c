
#include "f/f_pc/f_pc_priority.h"
#include "f/f_pc/f_pc_layer.h"
#include "f/f_pc/f_pc_layer_tag.h"
#include "f/f_pc/f_pc_base.h"


// f_pc_priority::crear$2186
extern process_priority_queue_info lbl_804505E8;

// f_pc_priority::l_fpcPi_Queue
extern node_list_class lbl_803F4E58;

int fpcPi_IsInQueue(process_priority_class *pPi)
{
    return cTg_IsUse(&pPi->mBase);
}

int fpcPi_QueueTo(process_priority_class *pPi)
{
    cTg_SingleCut(&pPi->mBase);
    fpcLy_CancelQTo(&pPi->mMtdTag);
    return 1;
}

int fpcPi_ToQueue(process_priority_class *pPi)
{
    u32 layer = pPi->mInfoQ.mLayer;

    if (cTg_Addition(&lbl_803F4E58, &pPi->mBase)) {
        if (layer != 0xFFFFFFFD) {
            layer_class *pLayer = fpcLy_Layer(layer);

            if (!fpcLy_ToCancelQ(pLayer, &pPi->mMtdTag)) {
                cTg_SingleCut(&pPi->mBase);
                return 0;
            }
        }

        return 1;
    }

    return 0;
}

process_priority_class * fpcPi_GetFromQueue(void)
{
    process_priority_class *pPi = (process_priority_class *) cTg_GetFirst(&lbl_803F4E58);

    if (pPi != NULL) {
        base_process_class *pProc = (base_process_class *) pPi->mBase.mpTagData;
        process_priority_class *pProcPi = &pProc->mPi;
        fpcLy_CancelQTo(&pProcPi->mMtdTag);
        return pProcPi;
    }

    return NULL;
}

int fpcPi_Delete(process_priority_class *pPi)
{
    fpcPi_QueueTo(pPi);
    pPi->mInfoQ.mLayer = lbl_804505E8.mLayer;
    pPi->mInfoQ.mListID = lbl_804505E8.mListID;
    pPi->mInfoQ.mListPrio = lbl_804505E8.mListPrio;
    return 1;
}

int fpcPi_IsNormal(unsigned int layer, unsigned short listID, unsigned short priority)
{
    if ((layer < 0xFFFFFFFE) && (listID < 0xFFFE) && (priority < 0xFFFE))
        return 1;

    return 0;
}

int fpcPi_Change(process_priority_class *pPi, unsigned int layer, unsigned short listID, unsigned short priority)
{
    base_process_class *pProc = (base_process_class *) pPi->mBase.mpTagData;
    int changed = 0;

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

int fpcPi_Handler(void)
{
    process_priority_class *pPi;
    while (pPi = fpcPi_GetFromQueue()) {
        base_process_class *pProc = (base_process_class *) pPi->mBase.mpTagData;
        layer_management_tag_class *pLayerTag = &pProc->mLyTg;
        line_tag *pLineTag = &pProc->mLnTg;
        if (fpcLyTg_Move(pLayerTag, pPi->mInfoQ.mLayer, pPi->mInfoQ.mListID, pPi->mInfoQ.mListPrio) == 1) {
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

int fpcPi_Init(process_priority_class *pPi, void *pUserData, unsigned int layer, unsigned short listID, unsigned short priority)
{
    if (!fpcPi_IsNormal(layer, listID, priority))
        return 0;

    pPi->mInfoQ.mLayer = layer;
    pPi->mInfoQ.mListID = listID;
    pPi->mInfoQ.mListPrio = priority;
    
    pPi->mInfoCurr.mLayer = pPi->mInfoQ.mLayer;
    pPi->mInfoCurr.mListID = pPi->mInfoQ.mListID;
    pPi->mInfoCurr.mListPrio = pPi->mInfoQ.mListPrio;
    cTg_Create(&pPi->mBase, pUserData);
    fpcMtdTg_Init(&pPi->mMtdTag, (process_method_tag_func) fpcPi_Delete, pPi);
    return 1;
}

