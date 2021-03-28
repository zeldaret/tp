lbl_800289D0:
/* 800289D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800289D4  7C 08 02 A6 */	mflr r0
/* 800289D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800289DC  48 01 79 21 */	bl afterDrawPath__28renderingPlusDoorAndCursor_cFv
/* 800289E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800289E4  7C 08 03 A6 */	mtlr r0
/* 800289E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800289EC  4E 80 00 20 */	blr 
