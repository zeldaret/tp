
#include "f/f_pc/f_pc_layer.h"
#include "f/f_pc/f_pc_base.h"
#include "SComponent/c_tag_iter.h"
#include "SComponent/c_tree_iter.h"

// g_fpcLn_Queue
extern node_lists_tree_class lbl_804505D8;

extern "C" {

#if NON_MATCHING
int fpcLnIt_MethodCall(node_class *pNode, void *pUserData)
{
    create_tag_class *pTag = (create_tag_class *) pNode;
    method_filter *pFilter = (method_filter *) pUserData;

    // regalloc
    layer_class *pLayer = ((base_process_class *) pTag->mpTagData)->mLyTg.mpLayer;
    layer_class *pCurLayer = fpcLy_CurrentLayer();

    fpcLy_SetCurrentLayer(pLayer);
    cTgIt_MethodCall(pTag, pFilter);
    fpcLy_SetCurrentLayer(pCurLayer);

    return (int) pTag;
}
#else
asm int fpcLnIt_MethodCall(node_class *pNode, void *pUserData)
{
    nofralloc
    /* 800236C0 00020600  94 21 FF E0 */	stwu r1, -0x20(r1)
    /* 800236C4 00020604  7C 08 02 A6 */	mflr r0
    /* 800236C8 00020608  90 01 00 24 */	stw r0, 0x24(r1)
    /* 800236CC 0002060C  39 61 00 20 */	addi r11, r1, 0x20
    /* 800236D0 00020610  48 33 EB 09 */	bl _savegpr_28
    /* 800236D4 00020614  7C 7C 1B 78 */	mr r28, r3
    /* 800236D8 00020618  7C 9D 23 78 */	mr r29, r4
    /* 800236DC 0002061C  80 63 00 0C */	lwz r3, 0xc(r3)
    /* 800236E0 00020620  83 E3 00 2C */	lwz r31, 0x2c(r3)
    /* 800236E4 00020624  4B FF E0 11 */	bl fpcLy_CurrentLayer
    /* 800236E8 00020628  7C 7E 1B 78 */	mr r30, r3
    /* 800236EC 0002062C  7F E3 FB 78 */	mr r3, r31
    /* 800236F0 00020630  4B FF DF FD */	bl fpcLy_SetCurrentLayer
    /* 800236F4 00020634  7F 83 E3 78 */	mr r3, r28
    /* 800236F8 00020638  7F A4 EB 78 */	mr r4, r29
    /* 800236FC 0002063C  48 24 33 81 */	bl cTgIt_MethodCall
    /* 80023700 00020640  7C 7F 1B 78 */	mr r31, r3
    /* 80023704 00020644  7F C3 F3 78 */	mr r3, r30
    /* 80023708 00020648  4B FF DF E5 */	bl fpcLy_SetCurrentLayer
    /* 8002370C 0002064C  7F E3 FB 78 */	mr r3, r31
    /* 80023710 00020650  39 61 00 20 */	addi r11, r1, 0x20
    /* 80023714 00020654  48 33 EB 11 */	bl _restgpr_28
    /* 80023718 00020658  80 01 00 24 */	lwz r0, 0x24(r1)
    /* 8002371C 0002065C  7C 08 03 A6 */	mtlr r0
    /* 80023720 00020660  38 21 00 20 */	addi r1, r1, 0x20
    /* 80023724 00020664  4E 80 00 20 */	blr 
}
#endif

void fpcLnIt_Queue(cNdIt_MethodFunc pFunc)
{
    method_filter filter;
    filter.mpMethodFunc = pFunc;
    filter.mpUserData = NULL;
    cTrIt_Method(&lbl_804505D8, fpcLnIt_MethodCall, &filter);
}

};
