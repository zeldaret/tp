lbl_8001BB44:
/* 8001BB44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001BB48  7C 08 02 A6 */	mflr r0
/* 8001BB4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001BB50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8001BB54  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8001BB58  38 64 4E C8 */	addi r3, r4, 0x4ec8
/* 8001BB5C  80 84 4F 98 */	lwz r4, 0x4f98(r4)
/* 8001BB60  48 02 77 8D */	bl convPId__14dEvt_control_cFUi
/* 8001BB64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001BB68  7C 08 03 A6 */	mtlr r0
/* 8001BB6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001BB70  4E 80 00 20 */	blr 
