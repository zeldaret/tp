lbl_8026F080:
/* 8026F080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026F084  7C 08 02 A6 */	mflr r0
/* 8026F088  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026F08C  38 A4 00 0C */	addi r5, r4, 0xc
/* 8026F090  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 8026F094  4B FF FF 6D */	bl Set__8cM3dGCpsFRC4cXyzRC4cXyzf
/* 8026F098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026F09C  7C 08 03 A6 */	mtlr r0
/* 8026F0A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8026F0A4  4E 80 00 20 */	blr 
