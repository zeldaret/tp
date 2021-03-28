lbl_8059BE80:
/* 8059BE80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059BE84  7C 08 02 A6 */	mflr r0
/* 8059BE88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059BE8C  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 8059BE90  28 00 00 02 */	cmplwi r0, 2
/* 8059BE94  40 82 00 0C */	bne lbl_8059BEA0
/* 8059BE98  48 00 00 1D */	bl actionPauseInit__10daObjSw5_cFv
/* 8059BE9C  48 00 00 08 */	b lbl_8059BEA4
lbl_8059BEA0:
/* 8059BEA0  4B FF FF 79 */	bl actionPauseNoneInit__10daObjSw5_cFv
lbl_8059BEA4:
/* 8059BEA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059BEA8  7C 08 03 A6 */	mtlr r0
/* 8059BEAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8059BEB0  4E 80 00 20 */	blr 
