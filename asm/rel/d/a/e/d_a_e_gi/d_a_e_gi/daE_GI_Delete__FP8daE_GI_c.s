lbl_806D00C8:
/* 806D00C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D00CC  7C 08 02 A6 */	mflr r0
/* 806D00D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D00D4  4B FF FF 81 */	bl _delete__8daE_GI_cFv
/* 806D00D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D00DC  7C 08 03 A6 */	mtlr r0
/* 806D00E0  38 21 00 10 */	addi r1, r1, 0x10
/* 806D00E4  4E 80 00 20 */	blr 
