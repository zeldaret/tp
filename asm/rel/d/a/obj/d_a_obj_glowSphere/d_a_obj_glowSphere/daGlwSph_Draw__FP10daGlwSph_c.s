lbl_80BFA438:
/* 80BFA438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFA43C  7C 08 02 A6 */	mflr r0
/* 80BFA440  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFA444  4B FF FE 61 */	bl draw__10daGlwSph_cFv
/* 80BFA448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFA44C  7C 08 03 A6 */	mtlr r0
/* 80BFA450  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFA454  4E 80 00 20 */	blr 
