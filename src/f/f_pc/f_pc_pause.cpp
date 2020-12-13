
#include "f/f_pc/f_pc_pause.h"
#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_layer_iter.h"
#include "f/f_pc/f_pc_node.h"

extern "C"
{

// f_pc_node::g_fpcNd_type
extern int lbl_80450D40;

#if NON_MATCHING
bool fpcPause_IsEnable(void *pProcess, u8 flag)
{
    base_process_class *pProc = (base_process_class *) pProcess;
    // extra addic/subfe?
    return (pProc->mPauseFlag & flag) == flag;
}
#else
asm s32 fpcPause_IsEnable(void *pProcess, u8 flag)
{
    nofralloc
/* 80023844 00020784  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80023848 00020788  88 03 00 0B */	lbz r0, 0xb(r3)
/* 8002384C 0002078C  7C 80 00 38 */	and r0, r4, r0
/* 80023850 00020790  7C 64 00 50 */	subf r3, r4, r0
/* 80023854 00020794  30 03 FF FF */	addic r0, r3, -1
/* 80023858 00020798  7C 00 19 10 */	subfe r0, r0, r3
/* 8002385C 0002079C  7C 00 00 34 */	cntlzw r0, r0
/* 80023860 000207A0  54 03 D9 7E */	srwi r3, r0, 5
/* 80023864 000207A4  4E 80 00 20 */	blr 
}
#endif

s32 fpcPause_Enable(void *pProcess, u8 flag)
{
    base_process_class *pProc = (base_process_class *) pProcess;
    pProc->mPauseFlag |= flag;

    if (fpcBs_Is_JustOfType(lbl_80450D40, pProc->mSubType)) {
        process_node_class *pNode = (process_node_class *) pProc;
        fpcLyIt_OnlyHere(&pNode->mLayer, (cNdIt_MethodFunc)fpcPause_Enable, (void*) (flag & 0xFF));
    }
    return 1;
}

s32 fpcPause_Disable(void *pProcess, u8 flag)
{
    base_process_class *pProc = (base_process_class *) pProcess;
    pProc->mPauseFlag &= (0xFF - flag) & 0xFF;

    if (fpcBs_Is_JustOfType(lbl_80450D40, pProc->mSubType)) {
        process_node_class *pNode = (process_node_class *) pProc;
        fpcLyIt_OnlyHere(&pNode->mLayer, (cNdIt_MethodFunc)fpcPause_Disable, (void*) flag);
    }

    return 1;
}

void fpcPause_Init(void *pProcess)
{
    base_process_class *pProc = (base_process_class *) pProcess;
    pProc->mPauseFlag = 0;
}

}
