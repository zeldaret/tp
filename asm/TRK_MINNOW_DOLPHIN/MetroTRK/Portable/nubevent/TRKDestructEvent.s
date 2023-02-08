lbl_8036CC18:
/* 8036CC18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036CC1C  7C 08 02 A6 */	mflr r0
/* 8036CC20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036CC24  80 63 00 08 */	lwz r3, 8(r3)
/* 8036CC28  48 00 0A 65 */	bl TRKReleaseBuffer
/* 8036CC2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036CC30  7C 08 03 A6 */	mtlr r0
/* 8036CC34  38 21 00 10 */	addi r1, r1, 0x10
/* 8036CC38  4E 80 00 20 */	blr 
