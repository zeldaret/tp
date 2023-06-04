/**
 * f_pc_executor.cpp
 * Framework - Process Executor
 */

#include "f_pc/f_pc_executor.h"
#include "f_pc/f_pc_node.h"
#include "f_pc/f_pc_pause.h"
#include "f_pc/f_pc_searcher.h"

/* 80021338-80021358 0020+00 s=1 e=9 z=291  None .text      fpcEx_Search__FPFPvPv_PvPv */
base_process_class* fpcEx_Search(fpcLyIt_JudgeFunc i_judgeFunc, void* i_data) {
    return (base_process_class*)fpcLyIt_AllJudge(i_judgeFunc, i_data);
}

/* 80021358-8002139C 0044+00 s=1 e=5 z=30  None .text      fpcEx_SearchByID__FUi */
base_process_class* fpcEx_SearchByID(unsigned int i_id) {
    if (i_id + 2 <= 1)
        return NULL;

    return fpcEx_Search(fpcSch_JudgeByID, &i_id);
}

/* 8002139C-800213C4 0028+00 s=0 e=7 z=42  None .text      fpcEx_IsExist__FUi */
BOOL fpcEx_IsExist(unsigned int i_id) {
    return fpcEx_SearchByID(i_id) != NULL ? TRUE : FALSE;
}

/* 800213C4-80021418 0054+00 s=0 e=1 z=0  None .text      fpcEx_Execute__FP18base_process_class */
s32 fpcEx_Execute(base_process_class* i_proc) {
    if (i_proc->mInitState != 2 || fpcPause_IsEnable(i_proc, 1) == 1)
        return 0;
    return fpcBs_Execute(i_proc);
}

/* 80021418-800214C4 00AC+00 s=1 e=0 z=0  None .text      fpcEx_ToLineQ__FP18base_process_class */
s32 fpcEx_ToLineQ(base_process_class* i_proc) {
    layer_class* pLayer = i_proc->mLyTg.mpLayer;
    base_process_class* pLayerPcNode = &pLayer->mpPcNode->mBase;

    if (pLayer->mLayerID == 0 || cTg_IsUse(&pLayerPcNode->mLnTg.mBase) == TRUE) {
        s32 ret = fpcLnTg_ToQueue(&i_proc->mLnTg, i_proc->mPi.mInfoCurr.mListID);
        if (ret == 0) {
            fpcLyTg_QueueTo(&i_proc->mLyTg);
            return 0;
        }

        i_proc->mInitState = 2;
        if (fpcBs_Is_JustOfType(g_fpcNd_type, i_proc->mSubType)) {
            process_node_class* pNode = (process_node_class*)i_proc;
            fpcLyIt_OnlyHere(&pNode->mLayer, (fpcLyIt_OnlyHereFunc)fpcEx_ToLineQ, pNode);
        }

        return 1;
    }

    return 0;
}

/* 800214C4-80021510 004C+00 s=0 e=1 z=0  None .text      fpcEx_ExecuteQTo__FP18base_process_class
 */
s32 fpcEx_ExecuteQTo(base_process_class* i_proc) {
    s32 ret = fpcLyTg_QueueTo(&i_proc->mLyTg);
    if (ret == 1) {
        i_proc->mInitState = 3;
        return 1;
    } else {
        return 0;
    }
}

/* 80021510-80021568 0058+00 s=0 e=1 z=0  None .text      fpcEx_ToExecuteQ__FP18base_process_class
 */
s32 fpcEx_ToExecuteQ(base_process_class* i_proc) {
    s32 ret = fpcLyTg_ToQueue(&i_proc->mLyTg, i_proc->mPi.mInfoCurr.mLayer,
                              i_proc->mPi.mInfoCurr.mListID, i_proc->mPi.mInfoCurr.mListPrio);
    if (ret == 1) {
        fpcEx_ToLineQ(i_proc);
        return 1;
    } else {
        return 0;
    }
}

/* 80021568-80021588 0020+00 s=0 e=1 z=0  None .text      fpcEx_Handler__FPFPvPv_i */
void fpcEx_Handler(fpcLnIt_QueueFunc i_queueFunc) {
    fpcLnIt_Queue(i_queueFunc);
}
