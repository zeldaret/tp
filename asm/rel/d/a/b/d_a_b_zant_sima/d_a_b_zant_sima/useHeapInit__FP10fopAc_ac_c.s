lbl_806531C8:
/* 806531C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806531CC  7C 08 02 A6 */	mflr r0
/* 806531D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806531D4  4B FF FD 65 */	bl CreateHeap__11daB_ZANTS_cFv
/* 806531D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806531DC  7C 08 03 A6 */	mtlr r0
/* 806531E0  38 21 00 10 */	addi r1, r1, 0x10
/* 806531E4  4E 80 00 20 */	blr 
