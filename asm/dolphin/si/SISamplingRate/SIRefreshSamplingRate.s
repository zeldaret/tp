lbl_80346374:
/* 80346374  7C 08 02 A6 */	mflr r0
/* 80346378  90 01 00 04 */	stw r0, 4(r1)
/* 8034637C  94 21 FF F8 */	stwu r1, -8(r1)
/* 80346380  80 6D 91 80 */	lwz r3, SamplingRate(r13)
/* 80346384  4B FF FF 0D */	bl SISetSamplingRate
/* 80346388  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8034638C  38 21 00 08 */	addi r1, r1, 8
/* 80346390  7C 08 03 A6 */	mtlr r0
/* 80346394  4E 80 00 20 */	blr 
