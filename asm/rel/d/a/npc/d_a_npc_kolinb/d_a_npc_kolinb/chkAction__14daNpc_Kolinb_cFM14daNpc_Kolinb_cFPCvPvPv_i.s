lbl_80A46AEC:
/* 80A46AEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A46AF0  7C 08 02 A6 */	mflr r0
/* 80A46AF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A46AF8  38 63 0F C4 */	addi r3, r3, 0xfc4
/* 80A46AFC  4B 91 B5 4C */	b __ptmf_cmpr
/* 80A46B00  7C 60 00 34 */	cntlzw r0, r3
/* 80A46B04  54 03 D9 7E */	srwi r3, r0, 5
/* 80A46B08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A46B0C  7C 08 03 A6 */	mtlr r0
/* 80A46B10  38 21 00 10 */	addi r1, r1, 0x10
/* 80A46B14  4E 80 00 20 */	blr 
