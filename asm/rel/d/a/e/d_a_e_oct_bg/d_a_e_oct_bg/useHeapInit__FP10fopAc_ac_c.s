lbl_807390C4:
/* 807390C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807390C8  7C 08 02 A6 */	mflr r0
/* 807390CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807390D0  48 00 01 4D */	bl CreateHeap__11daE_OctBg_cFv
/* 807390D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807390D8  7C 08 03 A6 */	mtlr r0
/* 807390DC  38 21 00 10 */	addi r1, r1, 0x10
/* 807390E0  4E 80 00 20 */	blr 
