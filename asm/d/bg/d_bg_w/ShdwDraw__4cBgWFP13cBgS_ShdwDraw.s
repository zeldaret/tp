lbl_8007B084:
/* 8007B084  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B088  7C 08 02 A6 */	mflr r0
/* 8007B08C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B090  A0 A3 00 92 */	lhz r5, 0x92(r3)
/* 8007B094  4B FF FF 2D */	bl ShdwDrawGrpRp__4cBgWFP13cBgS_ShdwDrawi
/* 8007B098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B09C  7C 08 03 A6 */	mtlr r0
/* 8007B0A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B0A4  4E 80 00 20 */	blr 
