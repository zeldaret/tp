lbl_8061A8B0:
/* 8061A8B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061A8B4  7C 08 02 A6 */	mflr r0
/* 8061A8B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061A8BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8061A8C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8061A8C4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8061A8C8  4B A2 7B A0 */	b reset__14dEvt_control_cFv
/* 8061A8CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061A8D0  7C 08 03 A6 */	mtlr r0
/* 8061A8D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8061A8D8  4E 80 00 20 */	blr 
