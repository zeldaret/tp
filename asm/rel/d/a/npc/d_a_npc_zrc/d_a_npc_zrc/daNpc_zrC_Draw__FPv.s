lbl_80B928CC:
/* 80B928CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B928D0  7C 08 02 A6 */	mflr r0
/* 80B928D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B928D8  4B FF BF AD */	bl Draw__11daNpc_zrC_cFv
/* 80B928DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B928E0  7C 08 03 A6 */	mtlr r0
/* 80B928E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B928E8  4E 80 00 20 */	blr 
