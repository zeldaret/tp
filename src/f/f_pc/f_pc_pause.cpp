
#include "f/f_pc/f_pc_pause.h"
#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_layer_iter.h"
#include "f/f_pc/f_pc_node.h"

// f_pc_node::g_fpcNd_type
extern s32 lbl_80450D40;

extern "C" {

#ifndef NON_MATCHING
s32 fpcPause_IsEnable(void* pProcess, u8 flag) {
    base_process_class* pProc = (base_process_class*)pProcess;
    // extra addic/subfe?
    return (u32)__cntlzw((u32)((pProc->mPauseFlag & flag) - flag ? 1 : 0)) >> 5;
}
#else
asm s32 fpcPause_IsEnable(void* pProcess, u8 flag) {
    nofralloc
#include "f/f_pc/asm/80023844.s"
}
#endif

s32 fpcPause_Enable(void* pProcess, u8 flag) {
    base_process_class* pProc = (base_process_class*)pProcess;
    pProc->mPauseFlag |= flag;

    if (fpcBs_Is_JustOfType(lbl_80450D40, pProc->mSubType)) {
        process_node_class* pNode = (process_node_class*)pProc;
        fpcLyIt_OnlyHere(&pNode->mLayer, (cNdIt_MethodFunc)fpcPause_Enable, (void*)(flag & 0xFF));
    }
    return 1;
}

s32 fpcPause_Disable(void* pProcess, u8 flag) {
    base_process_class* pProc = (base_process_class*)pProcess;
    pProc->mPauseFlag &= (0xFF - flag) & 0xFF;

    if (fpcBs_Is_JustOfType(lbl_80450D40, pProc->mSubType)) {
        process_node_class* pNode = (process_node_class*)pProc;
        fpcLyIt_OnlyHere(&pNode->mLayer, (cNdIt_MethodFunc)fpcPause_Disable, (void*)flag);
    }

    return 1;
}

void fpcPause_Init(void* pProcess) {
    base_process_class* pProc = (base_process_class*)pProcess;
    pProc->mPauseFlag = 0;
}
}