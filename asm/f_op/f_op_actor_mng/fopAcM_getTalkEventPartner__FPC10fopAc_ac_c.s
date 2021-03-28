lbl_8001BB14:
/* 8001BB14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001BB18  7C 08 02 A6 */	mflr r0
/* 8001BB1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001BB20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8001BB24  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8001BB28  38 64 4E C8 */	addi r3, r4, 0x4ec8
/* 8001BB2C  80 84 4F 94 */	lwz r4, 0x4f94(r4)
/* 8001BB30  48 02 77 BD */	bl convPId__14dEvt_control_cFUi
/* 8001BB34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001BB38  7C 08 03 A6 */	mtlr r0
/* 8001BB3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001BB40  4E 80 00 20 */	blr 
