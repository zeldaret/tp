/**
 * f_pc_pause.cpp
 * Framework - Process Pause
 */

#include "f_pc/f_pc_pause.h"
#include "f_pc/f_pc_layer_iter.h"

/* 80023844-80023868 0024+00 s=0 e=3 z=0  None .text      fpcPause_IsEnable__FPvUc */
s32 fpcPause_IsEnable(void* i_proc, u8 i_flag) {
    base_process_class* pProc = (base_process_class*)i_proc;
    if ((pProc->mPauseFlag & i_flag) == i_flag) {
        return 1;
    } else {
        return 0;
    }
}

/* 80023868-800238D4 006C+00 s=0 e=1 z=0  None .text      fpcPause_Enable__FPvUc */
s32 fpcPause_Enable(void* i_proc, u8 i_flag) {
    base_process_class* pProc = (base_process_class*)i_proc;
    pProc->mPauseFlag |= i_flag;

    if (fpcBs_Is_JustOfType(g_fpcNd_type, pProc->mSubType)) {
        process_node_class* pNode = (process_node_class*)pProc;
        fpcLyIt_OnlyHere(&pNode->mLayer, (fpcLyIt_OnlyHereFunc)fpcPause_Enable,
                         (void*)(i_flag & 0xFF));
    }
    return 1;
}

/* 800238D4-80023948 0074+00 s=0 e=1 z=0  None .text      fpcPause_Disable__FPvUc */
s32 fpcPause_Disable(void* i_proc, u8 i_flag) {
    base_process_class* pProc = (base_process_class*)i_proc;
    pProc->mPauseFlag &= (0xFF - i_flag) & 0xFF;

    if (fpcBs_Is_JustOfType(g_fpcNd_type, pProc->mSubType)) {
        process_node_class* pNode = (process_node_class*)pProc;
        fpcLyIt_OnlyHere(&pNode->mLayer, (fpcLyIt_OnlyHereFunc)fpcPause_Disable, (void*)i_flag);
    }

    return 1;
}

/* 80023948-80023954 000C+00 s=0 e=1 z=0  None .text      fpcPause_Init__FPv */
void fpcPause_Init(void* i_proc) {
    base_process_class* pProc = (base_process_class*)i_proc;
    pProc->mPauseFlag = 0;
}
