lbl_80B667D4:
/* 80B667D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B667D8  7C 08 02 A6 */	mflr r0
/* 80B667DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B667E0  4B FF 8F F9 */	bl Draw__11daNpc_ykW_cFv
/* 80B667E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B667E8  7C 08 03 A6 */	mtlr r0
/* 80B667EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B667F0  4E 80 00 20 */	blr 
