lbl_8066F4C4:
/* 8066F4C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8066F4C8  7C 08 02 A6 */	mflr r0
/* 8066F4CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8066F4D0  48 00 00 15 */	bl CreateHeap__9daBdoor_cFv
/* 8066F4D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8066F4D8  7C 08 03 A6 */	mtlr r0
/* 8066F4DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8066F4E0  4E 80 00 20 */	blr 
