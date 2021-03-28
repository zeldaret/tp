lbl_80554A18:
/* 80554A18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80554A1C  7C 08 02 A6 */	mflr r0
/* 80554A20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80554A24  4B FF F9 F1 */	bl CreateHeap__13daNpc_Kolin_cFv
/* 80554A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80554A2C  7C 08 03 A6 */	mtlr r0
/* 80554A30  38 21 00 10 */	addi r1, r1, 0x10
/* 80554A34  4E 80 00 20 */	blr 
