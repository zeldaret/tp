#include "global.h"
#include "f/f_pc/f_pc_node.h"
#include "f/f_pc/f_pc_layer_iter.h"

// g_fpcNd_type
extern s32 lbl_80450D40;

extern "C" {

    s32 fpcPause_Enable(process_node_class *pProc, u8 pauseMask);
    s32 fpcPause_Disable(process_node_class *pProc, u8 pauseMask);

#ifdef NON_MATCHING
s32 fpcPause_IsEnable(base_process_class *pProc, u8 expected) {
    return ((pProc->mUnk1 & expected) == expected); 
}
#else
asm s32 fpcPause_IsEnable(base_process_class *pProc, u8 expected) {
nofralloc
#include "asm/80023844.s"
}
#endif

s32 fpcPause_Enable(process_node_class *pProc, u8 pauseMask) {
    pProc->mUnk1 |= pauseMask;
    if (fpcBs_Is_JustOfType(lbl_80450D40, pProc->mSubType)) {
        fpcLyIt_OnlyHere(&pProc->mLayer, (cNdIt_MethodFunc) fpcPause_Enable, (void*)pauseMask);
    }
    return 1;
}

s32 fpcPause_Disable(process_node_class *pProc, u8 pauseMask) {
    pProc->mUnk1 &= (u8)(255-pauseMask);// simple "not" didn't work, but this feels wrong
    if (fpcBs_Is_JustOfType(lbl_80450D40, pProc->mSubType)) {
        fpcLyIt_OnlyHere(&pProc->mLayer, (cNdIt_MethodFunc) fpcPause_Disable, (void*)pauseMask);
    }
    return 1;
}

void fpcPause_Init(process_node_class *pProc) {
    pProc->mUnk1 = 0;
}

}