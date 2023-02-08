lbl_80BA88A4:
/* 80BA88A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA88A8  7C 08 02 A6 */	mflr r0
/* 80BA88AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA88B0  4B FF FF 1D */	bl CreateHeap__15daObj_Balloon_cFv
/* 80BA88B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA88B8  7C 08 03 A6 */	mtlr r0
/* 80BA88BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA88C0  4E 80 00 20 */	blr 
