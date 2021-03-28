lbl_80D4D62C:
/* 80D4D62C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4D630  7C 08 02 A6 */	mflr r0
/* 80D4D634  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4D638  4B FF FF 99 */	bl execute__10daSkip2D_cFv
/* 80D4D63C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4D640  7C 08 03 A6 */	mtlr r0
/* 80D4D644  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4D648  4E 80 00 20 */	blr 
